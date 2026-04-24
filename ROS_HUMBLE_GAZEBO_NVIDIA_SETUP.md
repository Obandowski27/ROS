# Ubuntu 22.04 + ROS 2 Humble + Gazebo + NVIDIA Docker Setup

This guide reproduces the working container setup used in this repository:

- Host OS: Ubuntu 22.04 or compatible Linux with Docker support
- Container OS: Ubuntu 22.04
- ROS: ROS 2 Humble
- Simulator: Gazebo Classic 11
- GPU: NVIDIA GPU with NVIDIA Container Toolkit enabled

The Docker image definition is in [DockerFile](./DockerFile).

## 1. Prerequisites on the host PC

Install the following on the host:

- NVIDIA proprietary driver
- Docker Engine
- NVIDIA Container Toolkit
- X11 available for GUI forwarding

Check that the NVIDIA driver is working on the host:

```bash
nvidia-smi
```

You should see your GPU listed.

## 2. Install Docker on the host

If Docker is not installed yet:

```bash
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker "$USER"
newgrp docker
```

Verify Docker:

```bash
docker run hello-world
```

## 3. Install NVIDIA Container Toolkit

Install the NVIDIA container runtime so Docker containers can access the GPU:

```bash
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | \
  sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg

curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
  sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
  sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update
sudo apt-get install -y nvidia-container-toolkit
sudo nvidia-ctk runtime configure --runtime=docker
sudo systemctl restart docker
```

Verify GPU access from Docker:

```bash
docker run --rm --gpus all nvidia/cuda:12.8.1-base-ubuntu22.04 nvidia-smi
```

If this fails, fix the host driver or toolkit setup before proceeding.

## 4. Allow X11 access for GUI applications

Gazebo needs access to your display server.

Run this on the host before starting the container:

```bash
xhost +local:root
```

This allows local root processes, including the container, to open windows on your display.

After you are done, you can revoke it:

```bash
xhost -local:root
```

## 5. Build the container image

From the repository root, build the image:

```bash
docker build -f DockerFile -t ros-humble-gazebo .
```

This uses the NVIDIA CUDA Ubuntu 22.04 base image and installs:

- ROS 2 Humble Desktop
- Gazebo Classic
- ROS Gazebo integration packages
- ROS build tools and rosdep

## 6. Run the container

Start the container with GPU and X11 access:

```bash
docker run -it --rm \
  --gpus all \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  ros-humble-gazebo
```

Notes:

- `--gpus all` exposes the NVIDIA GPU to the container
- `--net=host` is convenient for ROS networking
- `DISPLAY` and `/tmp/.X11-unix` allow Gazebo to open on the host desktop
- ROS is auto-sourced inside the container through `/root/.bashrc`

## 7. Verify GPU rendering inside the container

Inside the container, run:

```bash
glxinfo -B | grep -E 'OpenGL vendor|OpenGL renderer|OpenGL version'
nvidia-smi
```

Expected result:

- `OpenGL vendor string: NVIDIA Corporation`
- `OpenGL renderer string:` shows your NVIDIA GPU
- `nvidia-smi` works inside the container

If `glxinfo` shows `Mesa` or `llvmpipe`, then Gazebo is using software rendering instead of the NVIDIA GPU.

## 8. Launch Gazebo

Inside the running container:

```bash
gazebo
```

If you want extra startup logging:

```bash
gazebo --verbose
```

## 9. Expected audio warnings

You may still see messages like these when Gazebo starts:

```text
ALSA lib ... cannot find card '0'
AL lib: (EE) ALCplaybackAlsa_open: Could not open playback device 'default'
```

These warnings mean the container does not have an audio device configured. They do not affect Gazebo graphics or simulation.

If you want to suppress them, run the container like this:

```bash
docker run -it --rm \
  --gpus all \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -e ALSOFT_DRIVERS=null \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  ros-humble-gazebo
```

## 10. Rebuild after Dockerfile changes

If you update the Docker image definition later, rebuild with:

```bash
docker build -f DockerFile -t ros-humble-gazebo .
```

If you want to force a clean rebuild without cache:

```bash
docker build --no-cache -f DockerFile -t ros-humble-gazebo .
```

## 11. Common troubleshooting

### `nvidia-smi` fails inside the container

Check these on the host:

```bash
nvidia-smi
docker run --rm --gpus all nvidia/cuda:12.8.1-base-ubuntu22.04 nvidia-smi
```

If either fails, the host NVIDIA driver or NVIDIA Container Toolkit is not configured correctly.

### Gazebo opens but is slow

Inside the container, check:

```bash
glxinfo -B | grep -E 'OpenGL vendor|OpenGL renderer|OpenGL version'
```

If the output says `Mesa` or `llvmpipe`, the container is not using NVIDIA OpenGL.

### Gazebo cannot open a window

On the host, verify:

```bash
echo $DISPLAY
xhost
```

Then re-run:

```bash
xhost +local:root
```

### ROS GUI apps fail on Wayland

If you are using Wayland, XWayland compatibility may vary by desktop environment. Start by checking:

```bash
echo $XDG_SESSION_TYPE
echo $WAYLAND_DISPLAY
echo $DISPLAY
```

If GUI forwarding is inconsistent, using an Xorg session is usually the simplest baseline for Gazebo.

## 12. Full minimal workflow

If you just want the exact sequence of commands:

```bash
# Host: verify GPU
nvidia-smi

# Host: allow X11
xhost +local:root

# Host: build image
docker build -f DockerFile -t ros2-bumperbot .

# Host: run container
docker run -it --rm \
  --gpus all \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  ros2-bumperbot

# Container: verify rendering
glxinfo -B | grep -E 'OpenGL vendor|OpenGL renderer|OpenGL version'
nvidia-smi

# Container: start Gazebo
gazebo
```

## 13. Known good result

The working configuration should show output similar to:

```text
OpenGL vendor string: NVIDIA Corporation
OpenGL renderer string: NVIDIA GeForce RTX 5070 Laptop GPU/PCIe/SSE2
```

That confirms Gazebo is using hardware-accelerated NVIDIA rendering inside the container.
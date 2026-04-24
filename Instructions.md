# Host: allow X11
xhost +local:root

# Host: build image
docker build -f DockerFile -t ros-humble-gazebo .

# Host: run container
docker run -it --rm \
  --gpus all \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  ros2-bumperbot
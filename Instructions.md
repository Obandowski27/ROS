xhost +local:root

docker build -f DockerFile -t ros2-bumperbot .

docker run -it --rm \
  --name bumperbot \
  --gpus all \
  --net=host \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v /dev/bus/usb:/dev/bus/usb \
  --device /dev/input \
  --device-cgroup-rule='c 13:* rmw' \
  --device-cgroup-rule='c 189:* rmw' \
  -v /run/udev:/run/udev:ro \
  ros2-bumperbot
  
  
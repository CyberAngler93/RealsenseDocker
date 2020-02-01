# RealsenseDocker
A way to run realsense from a docker container.

Build with:
docker build -t robot
Once image is built run this docker command.

sudo docker run --rm -ti --net=host --ipc=host --device=/dev/ttyUSB0 \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   robot
   
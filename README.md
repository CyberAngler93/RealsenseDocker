# RealsenseDocker
A way to run realsense from a docker container for UAFRMC Lunarobotics.
This is a system to allow for the build and testing of realsense in the form of a container rather than having intel patch your kernel.

Requirements: Docker. 
Begin by cloning this repo.

Work in progress:
Start by installing 
Build with:
docker build -t robot
Once image is built run this docker command.

sudo docker run --rm -ti --net=host --ipc=host --device=/dev/ttyUSB0 \
   -e DISPLAY=$DISPLAY \
   -v /tmp/.X11-unix:/tmp/.X11-unix \
   /tmp/dataexchange:/tmp/dataexchange \
   robot
   

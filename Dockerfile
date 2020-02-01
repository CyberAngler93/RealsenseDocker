FROM ubuntu:18.04

LABEL author="Matt Perry"
LABEL description="Realsense Image"

USER ROOT

ADD aruco.sh /aruco.sh
ADD rs.sh /rs.sh
ADD build.sh /build.sh
ADD launch.sh /launch.sh
RUN chmod +x /launch.sh
RUN chmod +x /aruco.sh 
RUN chmod +x /rs.sh 
RUN chmod +x /build.sh
RUN sudo apt-get install freeglut3-dev g++ git make \
    libzmq3-dev libusb-1.0-0-dev libgtk-3-dev libglfw3-dev \
    libzmq3-dev cmake libssl-dev

RUN git clone https://github.com/UAFRMC/2020.git
RUN git clone https://github.com/IntelRealSense/librealsense.git

CMD ["/aruco.sh"]
CMD ["/rs.sh"]
CMD ["/build.sh"]
CMD ["/launch.sh"]

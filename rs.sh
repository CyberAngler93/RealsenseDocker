#!/bin/bash

cd 
cd /librealsense
./scripts/patch-realsense-ubuntu-lts.sh 
cmake .
make
sudo make install
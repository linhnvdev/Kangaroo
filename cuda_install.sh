#!/bin/bash

sudo apt install build-essential
sudo apt-get install g++-4.8
sudo apt-get install libpath-tiny-perl

wget https://developer.nvidia.com/compute/cuda/8.0/prod/local_installers/cuda_8.0.44_linux-run
chmod +x cuda_8.0.44_linux-run
./cuda_8.0.44_linux-run --tar mxvf
sudo cp InstallUtils.pm /usr/lib/x86_64-linux-gnu/perl-base
sudo bash cuda_8.0.44_linux-run --silent --verbose --toolkit --samples --override --no-opengl-libs
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64
export PATH=/usr/local/cuda-8.0/bin:$PATH

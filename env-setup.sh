#!/bin/bash

# go to root directory
cd ~

# install FreeRDP
wget https://github.com/FreeRDP/FreeRDP/archive/2.0.0-rc4.tar.gz
tar -zxvf 2.0.0-rc4.tar.gz
cd FreeRDP-2.0.0-rc4/
mkdir build
cd build/
sudo cmake ../
sudo make
sudo make install

# check .so package successful installation:

# /usr/local/lib64/libfreerdp2.so.2.0.0
# /usr/local/lib64/libfreerdp2.so.2
# /usr/local/lib64/libfreerdp2.so


# ReInstall Hydra
cd ~
wget https://github.com/vanhauser-thc/thc-hydra/archive/v9.0.tar.gz
tar -zxvf v9.0.tar.gz
cd thc-hydra-9.0/
sudo make clean
sudo ./configure
sudo make
sudo make install

# workshop command
# hydra -t 1 -V -f -l administrator -P /home/ec2-user/passwords/password_list.txt rdp://10.1.1.240
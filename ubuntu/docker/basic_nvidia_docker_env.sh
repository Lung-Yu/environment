#!/bin/bash
######################################################
# install driver and extras libs on Ubuntu server    #
#####################################################

# NVDRIVER -- NVIDIA driver version from ppa:graphics-drivers/ppa
NVDRIVER='nvidia-384'

# EXTRAS -- Extra packages (your taste may vary)
EXTRAS="build-essential dkms synaptic emacs ssh gdebi" 

# Do system Updates
apt-get update
apt-get -y dist-upgrade

apt-get install -y $EXTRAS 

# NVIDIA driver
add-apt-repository -y ppa:graphics-drivers/ppa
apt-get update
apt-get install -y $NVDRIVER
apt-get install -y nvidia-modprobe


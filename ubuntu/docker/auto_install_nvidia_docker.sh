# install libs
apt-get install nvidia-modprobe

#1. Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb
#2. Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi

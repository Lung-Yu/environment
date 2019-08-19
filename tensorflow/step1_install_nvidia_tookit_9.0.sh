wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64 -O /tmp/cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64.deb

sudo dpkg -i /tmp/cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64.deb

service lightdm stop
sudo apt update
sudo apt install cuda
sudo reboot

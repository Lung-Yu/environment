#Install Required Packages
sudo apt-get install openjdk-8-jdk git python-dev python3-dev python-numpy python3-numpy python-six python3-six build-essential python-pip python3-pip python-virtualenv swig python-wheel python3-wheel libcurl3-dev libcupti-dev

#Update & Install Nvidia Drivers
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update

#Install Nvidia Toolkit 8.0 & CudNN
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run -d ~/Downloads/cuda_8.0.61_375.26_linux.run
sudo sh ~/Downloads/cuda_8.0.61_375.26_linux.run --override --silent --toolkit

#This will install cuda into: /usr/local/cuda

echo "next step.install cudNN and config."

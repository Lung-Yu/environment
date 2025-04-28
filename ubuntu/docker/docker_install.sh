#!/bin/bash
# Docker installation script for Ubuntu
# Verified in Ubuntu 24.04 LTS

echo "update package"
sudo apt update -y
sudo apt install apt-transport-https curl -y

echo "add GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "add docker repo"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "install docker"
sudo apt update -y
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

echo "check docker status"
sudo systemctl is-active docker

echo "run_test"
sudo docker run hello-world

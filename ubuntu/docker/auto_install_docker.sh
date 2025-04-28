#Install Docker Engine
#1.  Add some dependencies for the install
apt-get install -y apt-transport-https ca-certificates curl software-properties-common
#2. Get and check the Docker GPG key
curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
apt-key fingerprint 58118E89F3A912897C070ADBF76221572C52609D
#3. Add the Docker repo for Ubuntu 16.04
add-apt-repository "deb https://apt.dockerproject.org/repo/  ubuntu-xenial main" 
#4. Install Docker
apt-get update
apt-get -y install docker-engine
#5. Add your login user name to the docker group so you can run docker commands without being root
#usermod -aG docker {username}
usermod -aG docker mipl
#6. Enable docker to start on boot
systemctl enable docker



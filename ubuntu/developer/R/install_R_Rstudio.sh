#install R and R studio 
#reference https://www.r-bloggers.com/how-to-install-r-on-linux-ubuntu-16-04-xenial-xerus/

#Ubuntu 16.04

#Add R repository
sudo echo "deb http://cran.rstudio.com/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list

#Add R to Ubuntu Keyring
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -

#Install R-Base
sudo apt-get update -y
sudo apt-get install r-base r-base-dev -y

#Installing R-Studio
sudo apt-get install gdebi-core

#version 0.99.896
#wget https://download1.rstudio.org/rstudio-0.99.896-amd64.deb
#sudo gdebi -n rstudio-0.99.896-amd64.deb
#rm rstudio-0.99.896-amd64.deb

#version 1.0.153
wget https://download1.rstudio.org/rstudio-xenial-1.0.153-amd64.deb
sudo gdebi -n rstudio-xenial-1.0.153-amd64.deb
rm rstudio-xenial-1.0.153-amd64.deb


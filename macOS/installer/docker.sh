#! /bin/bash

# brew install --cask --appdir=/Applications docker

brew install --cask docker
#brew install docker docker-compose colima
#brew install docker-compose colima
# make coffee
colima start

docker run hello-world

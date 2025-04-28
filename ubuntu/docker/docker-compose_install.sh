#!/bin/bash
# Script to install docker-compose plugin
# Verified in Ubuntu 24.04 LTS

sudo apt-get update
sudo apt-get install docker-compose-plugin

docker compose version

#!/usr/bin/env bash
## Install Docker and D-Compose
sudo apt update
## install Docker:
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce
#sudo systemctl status docker
## show groups:
#groups
sudo groupadd docker 
sudo usermod -aG docker ${USER}
## install Docker Compose:
sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker-compose version 1.28.5, build c4eb3a1f

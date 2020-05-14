#! /bin/bash
echo “Docker Kali Linux install script”
sudo apt update
sudo apt remove -y docker docker-engine docker.io* lxc-docker*
sudo apt -y install curl gnupg2 apt-transport-https software-properties-common ca-certificates
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
echo "deb [arch=amd64] https://download.docker.com/linux/debian buster stable" | sudo tee  /etc/apt/sources.list.d/docker.list
sudo apt update
sudo apt install -y docker-ce
#sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
newgrp docker
docker version

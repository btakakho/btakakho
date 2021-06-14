#!/bin/bash

if which docker &> /dev/null
then
	echo "Docker already installed."
    docker --version
else
	echo "Installing Docker..."
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
    sudo apt update
    apt-cache policy docker-ce
    sudo apt install docker-ce
    sudo usermod -aG docker ${USER}
    su - ${USER}
    groups
fi

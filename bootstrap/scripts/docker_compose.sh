#!/bin/bash

if which docker-compose &> /dev/null
then
	echo "Docker-compose already installed."
    docker-compose --version
else
	echo "Installing Docker-compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

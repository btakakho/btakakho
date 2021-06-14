#!/bin/bash

if which flutter &> /dev/null
then
	echo "Flutter already installed."
    flutter doctor
else
	echo "Installing Flutter..."
	sudo snap install flutter --classic
    flutter
    flutter doctor
fi

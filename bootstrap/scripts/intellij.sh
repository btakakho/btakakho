#!/bin/bash

if which intellij-idea-ultimate &> /dev/null
then
	echo "Intellij Idea Ultimate already installed."
else
	echo "Installing Intellij Idea Ultimate..."
	sudo snap install intellij-idea-ultimate --classic
fi

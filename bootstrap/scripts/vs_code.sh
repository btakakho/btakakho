#!/bin/bash

if which code &> /dev/null
then
	echo "VSCode already installed."
else
	echo "Installing VSCode..."
	sudo snap install --classic code
fi
echo

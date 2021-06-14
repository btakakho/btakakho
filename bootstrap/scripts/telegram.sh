#!/bin/bash

if which telegram-desktop &> /dev/null
then
	echo "Telegram already installed."
else
	echo "Installing Telegram..."
	sudo snap install telegram-desktop
fi

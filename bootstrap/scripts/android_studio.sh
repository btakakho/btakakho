#!/bin/bash

if which android-studio &> /dev/null
then
    echo "Android Studio already installed."
else
    echo "Installing Android Studio..."
    sudo snap install android-studio --classic
fi

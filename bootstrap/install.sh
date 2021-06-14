#!/bin/bash

source ./download_urls.sh
source ./utils.sh

ask "Set repositories?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/repos.sh
fi

ask "Update/Upgrade packages?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt update
    sudo apt upgrade
fi

ask "Install packages?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/packages.sh
fi

ask "Install Google Chrome?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/google_chrome.sh
fi

ask "Install Telegram?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/telegram.sh
fi

ask "Install VSCode?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/vs_code.sh
fi

ask "Install Intellij?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/intellij.sh
fi

ask "Install Android Studio?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/android_studio.sh
fi

ask "Install Flutter?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/flutter.sh
fi

ask "Install Docker?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/docker.sh
fi

ask "Install Docker-compose?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/docker_compose.sh
fi

ask "Set zsh as default shell?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/set_default_shell.sh
fi

ask "Install antigen?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/antigen.sh
fi

ask "Make symlinks with stow?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/stow.sh
fi

ask "Install nvm?"
if [[ $REPLY =~ ^[Yy]$ ]]
then
    source ./scripts/nvm.sh
fi

#!/bin/env bash

source utils.sh
source packages.sh
source direct_packages.sh

bold "# Setting repository for alacrity"
sudo add-apt-repository ppa:aslatter/ppa

# Update packages
bold "# Upgrade packages? (y/n)"
read -n 1 -r
echo
echo "Package upgrade skipped"
echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
    sudo apt update
    sudo apt upgrade
fi


echo
bold "# Installing packages:"
for package in ${packages[*]}
do
    if isPackageInstalled $package
    then
		echo
  		echo "Installing ${package}"
  		echo
  		sudo apt-get install ${package} -yq && echo "${package} installation done."
	else 
		echo "$package already installed."
	fi
done
echo


echo
bold "# Installing Google Chrome:"
if which google-chrome &> /dev/null
then 
	echo "google-chrome already installed"
else 
	echo "Installing Google Chrome"
	wget $CHROME_URL -O $DOWNLOADS_DIR/google_chrome.deb
  	sudo dpkg -i $DOWNLOADS_DIR/google_chrome.deb
    rm $DOWNLOADS_DIR/google_chrome.deb
fi
echo


echo
bold "# Installing Telegram:"
if which telegram-desktop &> /dev/null
then 
	echo "Telegram already installed"
else 
	echo "Installing Telegram"
	sudo snap install telegram-desktop
fi
echo

echo
bold "# Installing VSCode:"
if which code &> /dev/null
then 
	echo "VSCode already installed"
else 
	echo "Installing VSCode"
	sudo snap install --classic code
fi
echo


bold "# Install Intellij? (y/n)"
read -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	sudo snap install intellij-idea-ultimate --classic
fi
echo


echo
bold "# Set Zsh as default shell:"
chsh -s $(which zsh)
echo


echo
bold "# Installing antigen:"
curl -L git.io/antigen > $HOME/antigen.zsh
echo


echo
bold "# Download .dotfies repository:"
git clone https://github.com/btakakho/dotfiles.git ~/.dotfiles
echo


echo
bold "# Make symlinks with stow"
cd ~/.dotfiles/
stow .
echo


echo
bold "# Installing NVM:"
if which nvm &> /dev/null
then 
	echo "NVM already installed"
else 
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
fi
echo



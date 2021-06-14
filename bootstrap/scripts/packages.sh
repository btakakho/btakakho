#!/bin/bash

# Packages for installation
packages=(
  curl
  git
  vim
  zsh
  stow
  bat
  alacritty
  conky
  apt-transport-https
  ca-certificates
  software-properties-common
)

for package in ${packages[*]}
do
    if isPackageInstalled $package
    then
        echo
        echo "Installing ${package}..."
        echo
        sudo apt-get install ${package} -yq && echo "${package} installation done."
    else
        echo "$package already installed."
    fi
done

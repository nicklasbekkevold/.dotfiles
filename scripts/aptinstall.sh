#!/bin/bash

sudo apt update

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    sudo apt install -y $1
  else
    echo "Already installed: ${1}"
  fi
}

# Basics
install git
install zsh
install nmap
install openvpn
install npm
install curl

# Fun stuff
install sl
install cmatrix
install fortune
install cowsay

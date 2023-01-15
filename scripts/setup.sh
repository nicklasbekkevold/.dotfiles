#!/bin/bash

sudo bash ./aptinstall.sh
sudo bash ./programs.sh
sudo bash ./fonts.sh

# Get all upgrades
sudo apt upgrade -y

# Launch ZSH
zsh

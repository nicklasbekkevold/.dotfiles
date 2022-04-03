#!/bin/bash

# ZSH
echo "Installing ZSH..."

# Prompt installation
sudo npm install -g spaceship-prompt

# Install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Make ZSH the defualt shell
chsh -s $(which zsh)

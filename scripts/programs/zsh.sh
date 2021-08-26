#!/bin/bash

# ZSH
echo "Installing ZSH..."

# TODO: Add prompt installation

# Install zplug
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

# Make ZSH the defualt shell
chsh -s $(which zsh)

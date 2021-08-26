#!/bin/bash

# Node
echo "Installing node using nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
source $HOME/.nvm/nvm.sh # Source nvm
nvm install node

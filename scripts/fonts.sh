#!/bin/bash

# JetBrains mono
wget https://download.jetbrains.com/fonts/JetBrainsMono-2.242.zip
unzip JetBrainsMono-2.242.zip

mv fonts/ ~/.local/share/fonts/

rm OFL.txt 
rm AUTHORS.txt
rm JetBrainsMono-2.242.zip
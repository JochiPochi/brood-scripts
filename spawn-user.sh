#!/bin/sh

#This portion of the scropt should be run as a user
mkdir ~/.i3
cp ./i3/.fehbg ~/.i3/
cp ./i3/wallpz.jpg ~/.i3/
cp ./i3/config ~/.i3/
cp ./i3/.i3status.conf ~/
cp ./.gitcolors.sh ~/
cp ./ywtricks.txt ~/
mkdir -p ~/.vim/plugin
cp ./vim/Crystallite.vim ~/.vim/plugin/
echo "source ~/.gitcolors.sh" >> ~/.bashrc

gsettings set org.gnome.desktop.background show-desktop-icons false


#Settings
git config --global user.email "john.aleman@cyphyworks.com"
git config --global user.name "JochiPochi"

#!/bin/sh
set -o errexit
set -o nounset


#This portion of the script should be run as a user
mkdir ~/.i3
cp -r i3/*  ~/.i3
ln -s  $PWD/i3/i3status.conf ~/.i3status.conf 
cp ./.gitcolors.sh ~/

mkdir ~/.config/terminator
cp terminator/config ~/.config/terminator/config

ln -s $PWD/ywtricks.sh ~/
mkdir -p ~/.vim/plugin
cp ./vim/Crystallite.vim ~/.vim/plugin/
echo "source ~/.gitcolors.sh" >> ~/.bashrc

gsettings set org.gnome.desktop.background show-desktop-icons false

#Settings
git config --global user.email "aleman@mit.edu"
git config --global user.name "JochiPochi"
git config --global core.editor "vim"



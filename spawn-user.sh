#!/bin/sh

#This portion of the scropt should be run as a user
mkdir ~/.i3
ln -s  $PWD/i3/i3status.conf ~/.i3status.conf 
cp ./.gitcolors.sh ~/

mkdir ~/.config/terminator
cp terminator/config ~/.config/terminator/config

ln -s $PWD/ywtricks.txt ~/
mkdir -p ~/.vim/plugin
cp ./vim/Crystallite.vim ~/.vim/plugin/
echo "source ~/.gitcolors.sh" >> ~/.bashrc

gsettings set org.gnome.desktop.background show-desktop-icons false

#Settings
git config --global user.email "aleman@mit.edu"
git config --global user.name "JochiPochi"

#User level Dev Tools
PYCHARM_VERSION=2018.2.4
cd ~/
mkdir bin
cd bin
wget https://download.jetbrains.com/python/pycharm-community-$PYCHARM_VERSION.tar.gz
tar -zxf pycharm-community-$PYCHARM_VERSION.tar.gz
rm pycharm-community-$PYCHARM_VERSION.tar.gz
ln -s pycharm-community-$PYCHARM_VERSION/bin/pycharm.sh pycharm



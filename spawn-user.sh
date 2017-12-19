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

#User level Dev Tools
PYCHARM_VERSION=2017.2.2
cd ~/
mkdir bin
wget https://download.jetbrains.com/python/pycharm-community-$PYCHARM_VERSION.tar.gz
tar -zxf pycharm-community-$PYCHARM_VERSION.tar.gz
rm pycharm-community-$PYCHARM_VERSION.tar.gz
ln -s pycharm-community-2017.2.2/bin/pycharm.sh pycharm



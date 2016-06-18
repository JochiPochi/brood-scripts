#!/bin/sh

#This portion of the scropt should be run as root

echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list

apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update

#i3 stuff
apt-get install i3 feh

#git stuff
apt-get install gitk git-gui

#other stuff
vim ssh synaptic




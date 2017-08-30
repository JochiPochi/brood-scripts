#!/bin/sh

#This portion of the scropt should be run as root

echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list

apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update

#i3 stuff
apt-get install i3 feh

#remove unity
#apt-get autoremove --purge compiz compiz-gnome compiz-plugins-default libcompizconfig0

#autoremove --purge unity unity-common unity-services unity-lens-* unity-scope-* libunity-core-6* libunity-misc4 appmenu-gtk appmenu-gtk3 appmenu-qt* overlay-scrollbar* activity-log-manager-control-center firefox-globalmenu thunderbird-globalmenu
# the following command will disable the desktop (we won't need it with i3!)
gsettings set org.gnome.desktop.background show-desktop-icons false

#git stuff
apt-get install gitk git-gui

#other stuff
vim ssh synaptic




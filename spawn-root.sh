#!/bin/sh

#This script should be run as root


#Install i3
/usr/lib/apt/apt-helper download-file http://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2019.02.01_all.deb keyring.deb SHA256:176af52de1a976f103f9809920d80d02411ac5e763f695327de9fa6aff23f416
dpkg -i ./keyring.deb
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" >> /etc/apt/sources.list.d/sur5r-i3.list
apt update
apt install i3

apt-get install -y vim ssh synaptic tree baobab tmux gparted htop meld#Install Build tools
apt-get install -y build-essential

#Install i3 musts
apt-get install -y feh arandr xbacklight

# The following command will disable the desktop (we won't need it with i3!)
tgsettings set org.gnome.desktop.background show-desktop-icons false

#Install git stuff
apt-get -y install gitk git-gui

#Install oher useful dev apps
apt-get install -y vim ssh synaptic tree baobab tmux gparted htop meld

#exFAT support
apt-get install exfat-fuse exfat-utils

#Install silly stuff
apt-get install -y cmatrix

#Install VM stuff
echo "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list
wget https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
apt-get update
apt-get install -y virtualbox-6.0
apt-get install -y dkms

#Install Vagrant
wget https://releases.hashicorp.com/vagrant/2.2.5/vagrant_2.2.5_x86_64.deb
sudo dpkg -i vagrant_2.2.5_x86_64.deb

#Install Ansible
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

#Install slack
export SLACK_VERSION=4.0.1
apt-get -y install libappindicator1 libindicator7
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-${SLACK_VERSION}-amd64.deb
dpkg -i slack-desktop-${SLACK_VERSION}-amd64.deb
rm slack-desktop-${SLACK_VERSION}-amd64.deb

#Replace terminal
apt-get -y install terminator


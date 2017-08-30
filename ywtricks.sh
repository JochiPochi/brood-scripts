#Turn Wifi On or off
nmcli nm wifi on
nmcli nm wifi off

#Rescan PCI ports
echo 1 | sudo tee /sys/bus/pci/rescan

#Volume
amixer -D pulse sset Master 5%+

#Fix Chrome dependency error:

sudo gedit /etc/apt/sources.list.d/google-chrome.list

deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main


#Finding and replace things

find FOLDER_ADDRESS -name "*something*"

grep -rnw './' -e "pattern"

grep -rl 'string_to_find' ./ | xargs sed -i 's:string_to_replace:string_to_replace_with:g'

#Going to previous folder on shell
cd -

#How to mirror an entire git repo onto a new remote once
git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote"; done
git fetch --all
git pull --all

git remote add REMOTE
git push REMOTE --mirror

#Tmux
#Start session
tmux
#Disconnect
Ctrl+B  D
#Reconnect
tmux attach

#i3 Magic
Reorganize windows
Repeat $mod+Left until you focus Window One (command focus left)
Press $mod+v to split in vertical orientation (command split v)
Press $mod+Right to focus Window Two (command focus right)
Press $mod+Shift+Left to move Window Two left, which will put it under Window One (command move left)


### ZIP

zip -r archive_name.zip directory_to_compress

unzip archive_name.zip

### TAR

tar -cvf archive_name.tar directory_to_compress

tar -xvf archive_name.tar.gz

### TAR.GZ

tar -zcvf archive_name.tar.gz directory_to_compress

tar -zxvf archive_name.tar.gz

### TAR.BZ2

tar -jcvf archive_name.tar.bz2 directory_to_compress

tar -jxvf archive_name.tar.bz2 -C /tmp/extract_here/

### TAR.XZ

tar xvfJ filename.tar.xz

### Gunzip and DD

gunzip -c DPA-128G-v1.0.2.img.gz | sudo dd of=/dev/mmcblk0 bs=4M && sync

sudo dd if=/dev/mmcblk0 conv=sync,noerror bs=4M | gzip -c  > DPA-128G-v1.0.3.img.gz

### Bitbake recipe example

DESCRIPTION = "cameracapture application" 
SECTION = "examples" 
LICENSE = "CLOSED" 
PR = "r0" 

DEPENDS = "opencv"

SRC_URI = "git://github.com/zafrullahsyed/cameracapture.git;protocol=https;tag=v0.1"

S = "${WORKDIR}/git"

inherit pkgconfig cmake

do_install() {
    install -d ${D}${bindir}
    install -m 0755 cameracapture ${D}${bindir}
}

#Monitor enable
xrandr --current
xrandr --output VGA1 --off
xrandr --output VGA1 --auto --right-of LVDS1

#Check out system logs
sudo tail -f /var/log/syslog

#Check user systemd units
systemctl --user --all | grep "cyphy"

#Look at unit logs:
journalctl --user-unit unit-name
systemd-analyze plot > techtransit.svg

#Check Ubuntu Version
lsb_release -r | awk '{print $2}'

#Install SSH Key on server
ssh-copy-id -i ~/.ssh/id_rsa.pub remote-host

#HDD utilization
df -H

#Install deb package manually
sudo dpkg -i /Downloads/...
sudo apt-get install -f

#Check SO dependencies:
dpkg -S nameofso

#Unlock a machine through ssh
DISPLAY=:0 gnome-screensaver-command -d

#Git Tricks
git config --global user.name "JochiPochi"
git config --global user.email john.aleman@cyphywork.com
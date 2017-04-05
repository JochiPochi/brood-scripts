#Turn Wifi On or off
nmcli nm wifi on
nmcli nm wifi off

#Rescan PCI ports
echo 1 | sudo tee /sys/bus/pci/rescan


#Fix Chrome dependency error:

sudo gedit /etc/apt/sources.list.d/google-chrome.list

deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main


#Finding things

find FOLDER_ADDRESS -name "*something*"

grep -rnw '/path/to/somewhere/' -e "pattern"

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


ZIP

# zip -r archive_name.zip directory_to_compress

# unzip archive_name.zip

TAR

# tar -cvf archive_name.tar directory_to_compress

 tar -xvf archive_name.tar.gz

TAR.GZ

# tar -zcvf archive_name.tar.gz directory_to_compress

# tar -zxvf archive_name.tar.gz

TAR.BZ2

# tar -jcvf archive_name.tar.bz2 directory_to_compress

# tar -jxvf archive_name.tar.bz2 -C /tmp/extract_here/

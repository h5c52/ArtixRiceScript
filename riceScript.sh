#!/bin/bash

scriptDirectory=pwd
echo "Please enter the username of the account this script will install onto"
read
user=$REPLY

echo "the username is $user"

#Replace dotFiles
cp files/.bashrc /home/$user/.bashrc
cp files/wallpaper.png $user.config/wallpaper.png

#Install Xorg packages
pacman --noconfirm --needed -S base-devel git xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk xwallpaper
echo "exec dwm" >> /home/$user/.xinitrc

#Install and configure dwm Window Manager
mkdir /home/$user/bin
cd /home/$user/bin
	
git clone https://github.com/h5c52/dwm
git clone https://git.suckless.org/dmenu
git clone https://github.com/h5c52/st

cd dwm
make clean install

cd ../dmenu
make clean install

cd ../dmenu
make clean install

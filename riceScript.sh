#!/bin/bash

#Install Xorg packages
su
pacman -S base-devel git xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk

mkdir ~/bin
cd ~/bin

git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/dmenu

cd dwm
make clean install

cd ../dmenu
make clean install

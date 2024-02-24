#!/bin/env bash

base=$(pwd)
conf=$base/.config
home=$HOME

# Clone suckless forks
git clone https:://github.com/Eiafuawn/dwm $conf/dwm
git clone https:://github.com/Eiafuawn/dmenu $conf/dmenu
git clone https:://github.com/Eiafuawn/dwmblocks $conf/dwmblocks

# Make install for each
sudo make clean install -C $conf/dwm
sudo make clean install -C $conf/dmenu
sudo make clean install -C $conf/dwmblocks

stow . -t $home

echo "Done!"

#!/bin/env bash

base=$(pwd)
conf=$base/.config
home=$HOME

# Clone suckless forks
git clone git@github.com:Eiafuawn/dwm.git $conf/dwm
git clone git@github.com:Eiafuawn/dmenu.git $conf/dmenu
git clone git@github.com:Eiafuawn/dwmblocks.git $conf/dwmblocks

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S python npm feh yajl fd fzf picom ripgrep rofi unzip tree-sitter \
ttf-font-awesome noto-fonts-emoji ttf-jetbrains-mono-nerd ttf-nerd-fonts-symbols \
ttf-nerd-fonts-symbols-common network-manager-applet rofi-calc rofi-emoji \
rofi-rbw clipmenu spotifyd kitty neovim tmux zoxide 

# Make install for each
sudo make clean install -C $conf/dwm
# sudo make clean install -C $conf/dmenu
# sudo make clean install -C $conf/dwmblocks

git clone https://github.com/tmux-plugins/tpm $conf/tmux/plugins/tpm

stow . -t $home

echo "Done!"

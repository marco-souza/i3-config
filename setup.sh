#! /bin/bash

# install i3 (arch)
[[ ! -e /usr/bin/i3 ]] && sudo pacman -Syu nitrogen gnome-keyring compton i3

# copy initializer option
sudo cp ./plasma-i3.desktop /usr/share/xsessions/plasma-i3.desktop
[[ ! -d $HOME/.config/i3/ ]] && mkdir -p $HOME/.config/i3/
cp config $HOME/.config/i3/config
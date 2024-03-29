#! /bin/bash

# install i3 (arch)
sudo pacman -Syu nitrogen gnome-keyring picom i3

# copy initializer option
sddm_file=/usr/share/xsessions/plasma-i3.desktop
[[ ! -e $sddm_file ]] && sudo cp ./plasma-i3.desktop $sddm_file

config_folder=$HOME/.i3/
[[ ! -d $config_folder ]] && mkdir -p $config_folder

cp config $config_folder/config

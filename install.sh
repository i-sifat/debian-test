#!/bin/bash

# Install packages after installing base Debian with no GUI

# xorg display server installation and wm
sudo apt install -y xorg xterm rxvt-unicode

#WM
sudo apt install -y suckless-tools xautolock micro screen

#Other stuff
sudo apt install -y dunst libnotify-bin feh

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y w3m mc 

# Network File Tools/System Events
sudo apt install -y udisks2

# Neofetch/HTOP
sudo apt install -y neofetch htop lm-sensors smartmontools

# Various utilities
sudo apt install -y imagemagick  gnome-icon-theme rar unrar p7zip-full p7zip-rar zip unzip lxappearance


# Browser and Mail client Installation (eg. chromium)
sudo apt install -y firefox-esr dillo 

# Aditional packages
sudo apt install -y zathura zathura-djvu  

# Install fonts
sudo apt install -y fonts-font-awesome fonts-ubuntu fonts-liberation2 fonts-liberation xfonts-terminus fonts-jetbrains-mono

#Music and video packages
sudo apt install -y mpv alsa-utils moc

#Torrents
sudo apt install -y qbittorrent transmission-gtk

#Install Office packages
sudo apt install -y libreoffice-writer libreoffice-gtk3  

#Plan9
sudo apt install -y build-essential libx11-dev libxext-dev libxt-dev xorg-dev

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"

#!/bin/bash

# Various utilities
sudo apt install -y gnome-icon-theme

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xinput xorg-dev

# INCLUDES make,etc.
sudo apt install -y build-essential 

# Microcode for Intel/AMD 
sudo apt install -y amd64-microcode
#sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance 

# File Manager (eg. pcmanfm,krusader)
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager timeshift udisks2
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Terminal (eg. terminator,kitty)
sudo apt install -y tilix

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa mpv moc

# Neofetch/HTOP
sudo apt install -y neofetch htop lm-sensors smartmontools

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

#Install Office packages
#sudo apt install -y libreoffice-writer libreoffice-gtk3  

# Aditional packages
sudo apt install -y zathura zathura-djvu  

# Desktop background browser/handler 
sudo apt install -y feh
#feh --bg-fill /path/to/directory 
#example if you want to use in autostart located in ~/.local/share/dwm/autostart.sh

# Packages needed dwm after installation
sudo apt install -y numlockx policykit-1-gnome mousepad

# Packages needed for window manager installation
sudo apt install -y picom rofi dunst libnotify-bin unzip 

# Command line text editor -- nano preinstalled  -- I like micro but vim is great
sudo apt install -y micro gnome-screenshot

# my favs
sudo apt install -y scrot evince pdfarranger mkvtoolnix-gui

sudo apt install -y figlet qimgv redshift galculator udns-utils curl

sudo apt install snapd
sudo systemctl start snapd
Sudo systemctl enable snapd
sudo snap install core
sudo snap install eog	
sudo snap install flutter --classic
sudo snap install code --classic
sudo snap install android-studio --classic
sudo snap install brave
sudo snap install telegram-desktop
sudo snap install wps-2019-snap

# Install fonts
sudo apt install fonts-font-awesome fonts-ubuntu fonts-terminus 

mkdir ~/.local/share/fonts
cd /tmp
fonts=( 
"FiraCode" 
"Go-Mono" 
"Hack" 
"Inconsolata" 
"Iosevka" 
"JetBrainsMono" 
"Mononoki" 
"RobotoMono" 
"SourceCodePro" 
)

for font in ${fonts[@]}
do
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/$font.zip
unzip $font.zip -d $HOME/.local/share/fonts/$font/
rm $font.zip
done
fc-cache

# Ly Console Manager
# Needed packages
#sudo apt install -y libpam0g-dev libxcb-xkb-dev
#cd 
#git clone --recurse-submodules https://github.com/fairyglade/ly
#cd ly
#make
#sudo make install installsystemd
#sudo systemctl enable ly.service


# XSessions and dwm.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=sifat
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/dwm.desktop;rm ./temp


# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Creating directories
mkdir ~/.config/suckless

sudo apt install -y libx11-dev libimlib2-dev

# Move install directory, make, and install
cd ~/.config/suckless
tools=( "dwm" "dmenu" "st" "slstatus" "slock" "tabbed" )
for tool in ${tools[@]}
do 
	git clone git://git.suckless.org/$tool
	cd ~/.config/suckless/$tool;make;sudo make clean install;cd ..
done

sudo apt autoremove

printf "\e[1;32mDone! you can now reboot.\e[0m\n"

#ANOTHER SCRIPT

# PICK YOUR Window Managers (Uncomment if you want these installed)
# bash ~/bookworm-scripts/resources/bspwm-commands
# bash ~/bookworm-scripts/resources/dk-commands
# bash ~/bookworm-scripts/resources/dwm-commands
# bash ~/bookworm-scripts/resources/qtile-commands
# bash ~/bookworm-scripts/resources/i3-commands






# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings slick-greeter
sudo systemctl enable lightdm
echo 'greeter-session=slick-greeter' >>  sudo tee -a /etc/lightdm/lightdm.conf
echo 'greeter-hide-user=false' >>  sudo tee -a /etc/lightdm/lightdm.conf
########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 



#\cp ~/bookworm-scripts/resources/.bashrc ~

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"

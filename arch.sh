####
# Setting up wifi during installation:
# https://wiki.archlinux.org/title/Iwd
##
# Using iwd
# change /etc/iwd/main.conf
# iwctl
# device list
# station <station_name> scan
# station <station_name> get-networks
# if you want to connect to a 8021x security network do the next 3 steps.
# if not, jump to last line
# exit iwctl
# add ssid setting in /var/lib/iwd/<SSID.security>
# iconv -t utf16le | openssl md4 -provider legacy # hash your password
# iwctl
# station <station_name> connect <ssid>
#
##
## connect to internet after install using nmcli:
# nmcli --ask device wifi connect <ssid>
####

####
# Network Manager
###
sudo pacman -S network-manager-applet


####
# Installing dependencies and useful packages
####
sudo pacman -S git base-devel
sudo pacman -S cmake make gcc
sudo pacman -S fzf lsd


####
# AUR package manager - Yay
####
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si


####
# Audio - Pipewire + Wireplumber + Coppwr + EasyEffects + Pulsemixer
# Pulsemixer is meant for pulseaudio but works well with pipewire too!
# https://github.com/mikeroyal/PipeWire-Guide
# https://gitlab.freedesktop.org/rncbc/qpwgraph
# https://gitlab.freedesktop.org/pipewire/helvum
# https://github.com/saivert/pwvucontrol
# Another option is qpwgraph OR Helvum
# Also check pwvucontrol
####
sudo pacman -S pipewire wireplumber
sudo pacman -S coppwr easyeffects pulsemixer


####
# Xkeyboard config v2.42+ 
# Very important to have updated and correct language signs such as ZWNJ
# Zero Width Non-Joiner
# Install with pacman or copy everything in the repo below to: /usr/share/X11/xkb
# https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config
####
sudo pacman -S xkeyboard-config


####
# Terminal - Kitty
####
sudo pacman -S kitty


####
# Shell - Fish + Starship
####
sudo pacman -S fish
chsh -s /usr/bin/fish # change default shell
# Prompt Theme Engine
sudo pacman -S starship


####
# TMUX
####
sudo pacman -S tmux


####
# Neovim
####
sudo pacman -S neovim


####
# Install Display Manager (SDDM)
####
# yay -S sddm
# sudo systemctl enable sddm


####
# Bluetooth (bluez + blueman (gui))
# https://wiki.archlinux.org/title/Bluetooth
# Check with "rfkill" command that nothing is blocked
####
sudo pacman -S bluez bluez-utils blueman


####
# XDG Desktop portal for Hyprland (must have)
####
# sudo pacman -S xdg-desktop-portal-hyprland
yay -S xdg-desktop-portal-hyprland-git


####
# Wayland Clipboard - wl-clipboard
# Clipboard Manager - cliphist
####
sudo pacman -S wl-clipboard cliphist


####
# Brightness Control
####
sudo pacman -S brightnessctl


####
# Notification Manager (mako/dunst)
####
# sudo pacman -S dunst
sudo pacman -S mako


####
# App Launcher
# set binding in Hyprland conf later
####
sudo pacman -S fuzzel


####
# File Managers 
## set binding in Hyprland conf later
####
sudo pacman -S thunar gvfs thunar-archive-plugin file-roller
sudo pacman -S yazi

# System info
sudo pacman -S neofetch btop
# yay -S nitch
# sudo pacman -S conky

####
# Screenshot - Grom + Slurp + Swappy
####
sudo pacman -S grim slurp swappy


####
# Logout Menu
####
yay -S wlogout

####
# Lock Screen
####
sudo pacman -S hyprlock


####
# Wallpaper manager
####
sudo pcaman -S swww


####
# Keychain
# https://superuser.com/questions/1727591/how-to-run-ssh-agent-in-fish-shell
# https://wiki.archlinux.org/title/SSH_keys#ssh-agent
####
sudo pacman -S keychain
# edit ~/.config/fish/conf.d/keychain.fish
# set environment variable to ssh key


####
# Remaining Must Haves
####
sudo pacman -S qt5-wayland qt6-wayland
sudo pacman -S polkit-kde-agent
# autostart it by adding this to hyprland config: exec-once=/usr/lib/polkit-kde-authentication-agent-1


####
# Waybar Setup
####
sudo usermod -aG input $USER # Waybar module for keyboard status needs this
sudo pacman -S waybar


####
# Color picker
####
yay -S hyprpicker-git


####
# Nerd Font + Apple Emoji
#
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
# https://github.com/samuelngs/apple-emoji-linux/releases/latest/download/AppleColorEmoji.ttf
# mkdir ~/.local/share/fonts/
#
####
sudo pacman -S ttf-firacode-nerd
sudo pacman -S ttf-liberation
yay -S ttf-apple-emoji
# fc-cache -f -v # clear and regenerate font cache
# fc-list | grep "FiraCode Nerd Font" # confirming installation
# fc-list | grep "AppleColorEmoji" # confirming installation

####
# Persian Fonts
####
# sudo pacman -S bicon-git iranian-fonts
# yay -S xkb-switch
yay -S vazirmatn-fonts
yay -S vazir-code-fonts


####
# Icon theme - Papirus
####
yay -S papirus-icon-theme-git

####
# Break Reminder
####
yay -S ianny-git


####
# Fun
####
sudo pacman -S cmatrix
yay -S pipes.sh


####
# Applications
####
# Browser
sudo pacman -S firefox

# Spotify
yay -S spotify-launcher

# Telegram Messanger
yay -S telegram-desktop


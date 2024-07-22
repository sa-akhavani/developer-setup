####
# Network Connection - iwd + iwgtk
# Network Manager + network-manager-applet + nmtui are alternatives
###
yay -S iwd iwgtk
# sudo pacman -S network-manager-applet nmtui
# yay -S nmtui


####
# Installing dependencies and useful packages
####
sudo pacman -S git base-devel
sudo pacman -S cmake make gcc
sudo pacman -S fzf lsd pacman-contrib


####
# AUR package manager - Yay
####
git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si


####
# Audio - Pipewire + Wireplumber + Coppwr + EasyEffects + Pulsemixer + Playerctl
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
sudo pacman -S playerctl


####
# Xkeyboard config v2.42+ 
# Very important to have updated and correct language signs such as ZWNJ
# Zero Width Non-Joiner
# Install with pacman or copy everything in the repo below to: /usr/share/X11/xkb
# https://gitlab.freedesktop.org/xkeyboard-config/xkeyboard-config
####
sudo pacman -S xkeyboard-config


####
# Terminal - Kitty + Tmux
####
sudo pacman -S kitty tmux


####
# Shell and Prompt Theme Engine - Fish + Starship
####
sudo pacman -S fish starship
chsh -s /usr/bin/fish # change default shell


####
# Neovim
####
sudo pacman -S neovim


####
# Display Manager - Ly /SDDM
####
sudo pacman -S ly
# yay -S sddm
# sudo systemctl enable sddm


####
# Bluetooth - bluez + blueman (gui)
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


####
# System info - Fastfetch + Btop
# Honorable mentions: conky - nitch
####
sudo pacman -S fastfetch btop


####
# Screenshot - Grom + Slurp + Swappy
####
sudo pacman -S grim slurp swappy


####
# Logout Menu
####
yay -S wlogout

####
# Lock Screen and Idle Daemon - hyprlock + hypridle
# swaylock is an alternattive
####
sudo pacman -S hyprlock hypridle


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
# Don't install it using aur or pacman
# it doesn't have support for cava module
# sudo pacman -S waybar
####
sudo usermod -aG input $USER # Waybar module for keyboard status needs this
yay -S libcava #libcava is needed for waybar
git clone https://aur.archlinux.org/waybar-git.git
cd waybar-git
# vim PKGBUILD
# change Dcava=diabled -> Dcava=enabled
# add Dmpd=enabled
# makepkg
# Then install it using:
# pacman -U <output_package_name>




####
# Gestures - Fusuma + ydotool
####
sudo pacman -S libinput ruby ydotool
sudo gem install fusuma --no-user-instal


####
# Color picker
####
yay -S hyprpicker-git


####
# Fonts and Emojis
#
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
# https://github.com/samuelngs/apple-emoji-linux/releases/latest/download/AppleColorEmoji.ttf
# mkdir ~/.local/share/fonts/
#
####
sudo pacman -S ttf-fira-code ttf-nerd-fonts-symbols-mono ttf-liberation ttf-opensans
yay -S ttf-apple-emoji
yay -S vazirmatn-fonts
# yay -S vazir-code-fonts
# fc-cache -f -v # clear and regenerate font cache
# fc-list | grep "FiraCode Nerd Font" # confirming installation
# fc-list | grep "AppleColorEmoji" # confirming installation


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
# yay -S cava
#

####
# Applications
####
# Browser
sudo pacman -S firefox

# Spotify
yay -S spotify   # Official Client
# yay -S spotify-launcher
pacman -S ncspot # Command Line Unofficial Client

# Messangers
yay -S telegram-desktop discord
sudo pacman -S signal-desktop

# Teams and Slack
yay -S slack-desktop teams

# Media Players
yay -S vlc jellyfin-media-player 
# yay -S mpv

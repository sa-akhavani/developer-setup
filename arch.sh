# Setting up wifi during installation:
# https://wiki.archlinux.org/title/Iwd

# Conenct to internet
# nmcli --ask dev wifi connect ssid_name

####
# Installing dependencies and useful packages
####
sudo pacman -S git base-devel lsd
sudo pacman -S fzf


####
# AUR package manager - Yay
####
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si


####
# Audio
####
sudo pacman -S pipewire wireplumber


####
# Terminal - Kitty
####
sudo pacman -S kitty


####
# Shell - Fish + Starship
####
sudo pacman -S fish-shell
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
yay -S sddm
sudo systemctl enable sddm


####
# Bluetooth
# https://wiki.archlinux.org/title/Bluetooth
# Check with "rfkill" command that nothing is blocked
####
sudo pacman -S bluez bluez-utils
# Bluetooth Graphic Interface
sudo pacman -S blueman


####
# XDG Desktop portal for Hyprland (must have)
####
# sudo pacman -S xdg-desktop-portal-hyprland
yay -S xdg-desktop-portal-hyprland-git


####
# Wayland Clipboard
####
sudo pacman -S wl-clipboard
# Clipboard Manager
sudo pacman -S cliphist


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
yay -S thunar yazi


# System info
sudo pacman -S neofetch btop
# yay -S nitch
# sudo pacman -S conky


# Screenshot
sudo pacman -S grim slurp

# Wallpaper manager
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
# Nerd Font + Apple Emoji
#
# https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
# https://github.com/samuelngs/apple-emoji-linux/releases/latest/download/AppleColorEmoji.ttf
# mkdir ~/.local/share/fonts/
#
####
sudo pacman -S ttf-firacode-nerd
yay -S ttf-apple-emoji
# fc-cache -f -v # clear and regenerate font cache
# fc-list | grep "FiraCode Nerd Font" # confirming installation
# fc-list | grep "AppleColorEmoji" # confirming installation


####
# Applications
####
# Browser
sudo pacman -S firefox

# Spotify
yay -S spotify-launcher

# Telegram Messanger
yay -S telegram-desktop

# Setting up wifi during installation:
# https://wiki.archlinux.org/title/Iwd

# Conenct to internet
# nmcli

# Installing dependencies and packages

# Install necessary packages
sudo pacman -S git base-devel

# install neovim and fzf
sudo pacman -S fzf neovim

# Install yay

# Shell
pacman -S fish-shell

# Prompt Theme Engine
pacman -S starship

# TMUX
pacman -S tmux

# Status Bar
pacman -S waybar

# Notification Manager (maybe check mako)
pacman -S dunst

# App Launcher
pacman -S fuzzel

# File Managers 
yay -S thunar yazi

# System info
pacman -S neofetch btop
pacman -S conky


# Browser
pacman -S firefox

# Desktop portal (must have)
pacman -S xdg-desktop-portal-hyprland

# Wallpaper manager
pcaman -S swww


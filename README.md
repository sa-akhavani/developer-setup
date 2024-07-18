# My Developr Setup Dotfiles

Welcome to my GitHub repository where I share my developer setup and dotfiles.
I've designed this environment to be fast, minimal, and feature-packed, yet aesthetically pleasing.
I have optimized this setup for my software engineering and devops projects.
I went through HOURS of pain to come up with this config so you don't have to!

## Overview

| **Tool / Environment**         | **Description**                                                                                           |
| ------------------------------ | --------------------------------------------------------------------------------------------------------- |
| **OS**                         | [Arch Linux](https://archlinux.org/)     |
| **Terminal**                   | [kitty](https://github.com/kovidgoyal/kitty) |
| **Multiplexer**                | [tmux](https://github.com/tmux/tmux)                            |
| **Text Editor**                | [nvim](https://github.com/neovim/neovim)          |
| **Shell**                      | [fish-shell](https://github.com/fish-shell/fish-shell) |
| **Prompt Theme**               | [starship](https://github.com/starship/starship)              |
| **Window Manager**             | [Hyprland](https://github.com/hyprwm/Hyprland) |
| **Display Manager**            | [ly](https://github.com/fairyglade/ly)                           |
| **Notification Daemon**        | [Mako](https://github.com/emersion/mako)     |
| **System Info Tools**          | [neofetch](https://github.com/dylanaraps/neofetch), [btop](https://github.com/aristocratos/btop) |
| **Screen Locker**              | [swaylock](https://github.com/mortie/swaylock)                   |
| **Status Bar**                 | [waybar](https://github.com/Alexays/Waybar)                       |
| **File Manager**               | [yazi](https://github.com/sxyazi/yazi), [thunar](https://github.com/xfce-mirror/thunar) |
| **App Launcher**               | [fuzzel](https://codeberg.org/dnkl/fuzzel)                       |
<!-- | Icon Theme          |                                               [Flatery Dark](https://github.com/cbrnix/Flatery)                                                | -->

## Installation

To replicate my setup:

1. **Install Arch Linux**: Follow the [official installation guide](https://wiki.archlinux.org/title/Installation_guide) for desktop profiles.
2. **Clone this repository**:
3. **Run installation script**:
4. **Copy repo config files to local config**:

```bash
git clone https://github.com/sa-akhavani/dotfiles.git && cd dotfiles
chmod +x ./install.sh
./install.sh
cp -r ./.config/* ~/.config/
cp -r ./etc/* /etc/
```

## Setup

### Arch Linux
I was an Ubuntu user for a long time (7+ years).
I eventually decided to migrate to Arch Linux to be able to control every single aspect of my os and also improve my linux knowledge.
I love Arch's lightweight nature. Fits perfectly with my minimalistic approach.
Arch's package manager, pacman, and AUR are a blessing! you have to use it to see
how good this is!


### Hyprland (Wayland)


Now that Wayland is becoming stable and lots of people are creating packages for it,
Hyprland is an amazing tiling window manager for wayland.
It's highly customizablity and native Wayland support significantly enhance my workflow compared to traditional X11 setups.
It's time to put X11 to rest.
Also, it is better than Sway in my opinion.


### Display Manager (Ly)
I Have tried KDE and GNOME display managers in Ubuntu and Kubuntu
But both of them are extremely bloated.
So I chose `Ly` as my display manager, keeping everything minimal.


## Shell and Prompt Engine (Fish, Starship, ZSH)
### Fish
- Fish: Smart and user-friendly command line shell. Includes syntax highlighting, autosuggest-as-you-type, fancy tab completions
- Starship: Minimal, blazing-fast, and customizable prompt for any shell! 
- ZSH (Alternative to Fish): Unix shell with tons of quality of life features.


## Terminal and Multiplexer (Wezterm, Tmux, Kitty)
### Wezterm
- Wezterm: a GPU-Accelared cross-platform terminal emulator that supports font ligatures
- Tmux: Highly customizable terminal multiplexer
- Kitty (Alternative to Wezterm): Cross-platform, fast, feature-rich, GPU based terminal.


### Editor (Neovim)
- My go-to editor is Neovim, a Vim-based powerhouse equipped with thousands of plugins and features. It strikes a balance between functionality and efficiency that I'm proud to use.
- I mainly use Neovim but I also use other IDEs if I am working on a project with a huge codebase. I am not crazy :D
- I spent a lot of time coming up with something that is not bloated but a ton of features and am very proud of this config.


## WIP

#### Waybar
- [ ] Fix waybar keyboard layout change in multiple keyboards
- [ ] Fix waybar privacy module OR cava
- [ ] Fix waybar date module
- [ ] Fix waybar temperature wrong
- [ ] Change waybar weather logo (maybe switch to script 2)
- [ ] Switch updater module to this:
    -- https://github.com/coffebar/waybar-module-pacman-updates

#### Fonts
- [ ] Fix browser font
- [ ] Figure out how mono fonts issues are solved and which font to use

## Misc

### Cava in Waybar
- waybar-git package in AUR has set cava to be disabled.
So you either have to clone the AUR git repo and build it using mkpkg OR
clone the github repo and build it using that.
https://github.com/Alexays/Waybar/issues/2781#issuecomment-1873613007

- Don't forget to regularly check for updates!

- Also before that, you MIGHT need to fully remove / or install libcava and cava from your system.

```bash
yay -R cava libcava
sudo rm -rfv /usr/lib/libcava.so
sudo rm -rfv /usr/lib64/libcava.so
sudo rm -rfv /usr/lib/pkgconfig/cava.pc
sudo rm -rfv /usr/lib64/pkgconfig/cava.pc
sudo rm -rfv /usr/include/cava
yay -S libcava
cd /tmp
git clone https://aur.archlinux.org/waybar-git.git
cd waybar-git
vim PKGBUILD
# change Dcava=diabled -> Dcava=enabled
# add Dmpd=enabled
makepkg
# Then install it using:
pacman -U <output_package_name>
```

### Cava using microphone

- Make sure to set method to pipewire. fot method DO NOT use alsa
- For the source, it will automatically try to get it from the output
- If not, use `wpctl status`, then under Audio, Sinks, Pick the number that
represents the speaker.
Or use `pactl list sources` and in the output, find the speaker and use
its number as the value of the source
- https://github.com/karlstav/cava?tab=readme-ov-file#pipewire
- https://github.com/karlstav/cava/issues/422#issuecomment-994270910
- You can check and monitor it using coppwr OR helvum

### Wrong temperature in waybar
- https://askubuntu.com/a/854029/1011286
- https://github.com/Alexays/Wayklbar/issues/2929#issuecomment-2031721187

```bash
cat /sys/class/thermal/thermal_zone*/temp
# To see what zones the temperatures are referring to use:
paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'
INT3400 Thermal  20.0°C

```

### NVM in fish
Setting up nvm in fish is a pain. These are some resources that help.
- https://github.com/jorgebucaran/nvm.fish

### Neovim and Tmux
I should read this: https://www.bugsnag.com/blog/tmux-and-vim/


### Spotify (Linux)
While setting up the Spotify client for Linux, I encountered a few quirks.
If you're using NetworkManager with iwd together (don't do that:D),
you have to stop NetworkManager service to be able to use spotify.

Also, hyprland windows don't have a menu. bar. To toggle offline mode, you can press `Ctrl-Shift-o`.

For more troubleshooting tips, check out these resources:
- [Community Tips](https://community.spotify.com/t5/Desktop-Linux/How-do-I-switch-to-offline-mode-with-no-File-menu/m-p/1577765#M3528)
- [Arch Linux Wiki](https://wiki.archlinux.org/title/Spotify)
- [Alternative Spotify Launcher](https://github.com/kpcyrd/spotify-launcher)


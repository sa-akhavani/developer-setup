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
chmod +x ./arch.sh
./arch.sh
cp -r ./.config/* ~/.config/
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


## Misc


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


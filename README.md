# My Developr Setup Dotfiles
My full developer setup and dotfiles. I use this setup for my work as a software
engineer and for my devops work setup.
My goal is to come up with a setup that is fast, not bloated, and has all the
necessary features, while it is beautiful.

I went through HOURS of pain to come up with
this setup so you don't have to! Here are the tools and environments that I use:


## Overview

| **Entity Type**     |                                                                **Entity Name**                                                                 |
| :------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------: |
| OS                  |                                                     [Arch Linux](https://archlinux.org/)                                                     |
| Terminal            |                                                  [kitty](https://github.com/kovidgoyal/kitty)                                                  |
| Terminal Multiplexer|                                                  [tmux](https://github.com/tmux/tmux)                                                  |
| Text Editor         |                                                   [nvim](https://github.com/neovim/neovim)                                                     |
| Shell               |                                             [fish-shell](https://github.com/fish-shell/fish-shell)                                             |
| Promp Theme Engine  |                                                [starship](https://github.com/starship/starship)                                                |
| Compositor (Window Manager)      |                                                     [Hyprland](https://github.com/hyprwm/Hyprland)                                                     |
| Display Manager (Greeter)     |                                                     [ly](https://github.com/fairyglade/ly)                                                     |
| Notification Deamon |                                         [Mako](https://github.com/emersion/mako)                                         |
| System Info Tool    |                     [neofetch](https://github.com/dylanaraps/neofetch) </br> [btop](https://github.com/aristocratos/btop)                      |
| Screen Locker       |                                             [swaylock](https://github.com/mortie/swaylock) |
| Status Bar          |                                                  [waybar](https://github.com/Alexays/Waybar)                                                   |
| File Manager        |                          [yazi](https://github.com/sxyazi/yazi) </br> [thunar](https://github.com/xfce-mirror/thunar)                          |
| App Launcher        |                                                   [fuzzel](https://codeberg.org/dnkl/fuzzel)                                                   |
<!-- | Icon Theme          |                                               [Flatery Dark](https://github.com/cbrnix/Flatery)                                                | -->



## OS
### Arch Linux
I was an Ubuntu user for a long time (7+ years).
I eventually decided to switch to arch to be able to control every single aspect of my os and also improve my linux knowledge.
Also, it is less bloated than other distros.
It's package manager and community is also insane.
Needless to mention Arch Wiki, which is 

## Display Manager
### Ly
I had tried both KDE and GNOME display managers in ubuntu and kubuntu before.
but both of these are extremely bloated which made me decide to switch to something
minimal as a display manager. So I chose Ly.

## Window Manager
### Hyprland
Now that Wayland is becoming stable and lots of people are creating packages for it,
I decided to use as much wayland-native environments as possible.
Hyprland is an amazing tiling window manager for wayland and is highly customizable.
Way better than Sway!

## Terminal and Multiplexer
### Wezterm
GPU-Accelared cross-platform terminal emulator that supports font ligatures

### Tmux
Highly customizable terminal multiplexer

### Kitty
Alternative to Wezterm
Cross-platform, fast, feature-rich, GPU based terminal.

## Shell and Prompt Engine
### Fish
Smart and user-friendly command line shell.
Includes syntax highlighting, autosuggest-as-you-type, fancy tab completions

### Starship
Minimal, blazing-fast, and customizable prompt for any shell! 

### ZSH
Alternative to Fish
Unix shell with tons of quality of life features.

### Editor
I mainly use Neovim but I also use other IDEs if I am working on a project with
a huge codebase. I am not crazy :D
### Neovim
Vim based editor with thousands of plugins and features
I spent a lot of time coming up with something that is not bloated but a ton of features and am very proud of this config.
I should read this: https://www.bugsnag.com/blog/tmux-and-vim/

## Misc
### Spotify
I ran into some problems setting up Spofify Client For Linux so i write some notes here.
If NetworkManager is running but you are connected using iwd
Spotify won't work!

Toggle offline mode by pressing Ctrl-Shift-o
https://community.spotify.com/t5/Desktop-Linux/How-do-I-switch-to-offline-mode-with-no-File-menu/m-p/1577765#M3528

Useful:
https://wiki.archlinux.org/title/Spotify

Alternative:
https://github.com/kpcyrd/spotify-launcher


# Installation
After installing arch (desktop profile):


```bash
chmod +x ./arch.sh
./arch.sh
cp -r ./.config/* ~/.config/
```


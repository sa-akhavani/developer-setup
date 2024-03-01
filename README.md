# My Developer Setup

My full developer setup and dotfiles. I use this setup for my work as a software
engineer and for my devops work setup. I went through HOURS of pain to come up with
this setup so you don't have to! Here are the tools and environments that I use: - KDE Plasma - Conveniet less bloated linux desktop environment with easier
customizations than GNOME - Wezterm - GPU-Accelared cross-platform terminal emulator that supports font ligatures - Tmux - Highly customizable terminal multiplexer - ZSH - Unix shell with tons of quality of life features. - Neovim - vim based editor with thousands of plugins and features - I spent a lot of time coming up with something that is not bloated but
a ton of features and am very proud of this config.

I should read this:
https://www.bugsnag.com/blog/tmux-and-vim/

## Easy Setup

You can setup everythin by using the `install.sh` script in this repository. It will
setup `Wezterm`, `Tmux`, `ZSH`, `Neovim`, and `FiraCode` nerd font for you.
```bash
sudo ./install.sh
```

If you do not want to install everything together, you could use other sections to
setup each tool separately.

## General Requirements

```bash
sudo apt install curl wget g++ cmake
```

## Fonts

### FiraCode nerd font!

```bash
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode.zip -d FiraCode
mkdir ~/.local/share/fonts/
mv /tmp/FiraCode/FiraCodeNerdFont-Retina.ttf ~/.local/share/fonts/
fc-cache -f -v # clear and regenerate font cache
fc-list | grep "FiraCode" # confirming installation
rm -r /tmp/FiraCode*
```

### Apple Color Emoji

```bash
cd /tmp/
wget https://github.com/samuelngs/apple-emoji-linux/releases/latest/download/AppleColorEmoji.ttf
mkdir -p ~/.local/share/fonts/
cp AppleColorEmoji.ttf ~/.local/share/fonts
fc-cache -f -v # clear and regenerate font cache
fc-list | grep "AppleColorEmoji" # confirming installation
```

## Wezterm

```bash
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm
cp ./.wezterm.lua ~/
```

## Tmux

    - Note that at Tmux 3.x+ is required so all plugins could work!
    - We use oh-my-tmux as a base config and customize it later.

```bash
sudo apt install g++ cmake perl sed python3-pip xsel xclip
# Installing both xclip and xsel is not necessary but for tmux-yank to work
# one of them needs to be installed on your distro and one of them might not
# work on your system
sudo apt install tmux
pip install --user libtmux

# for enabling CPU temperature monitoring
sudo apt install lm-sensors
sudo sensors-detect
sudo service kmod start

# Installing Oh My Tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

# Installing Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
# Copying Our custom tmux.conf file to home directory
cp .tmux.conf.local ~/
```

## ZSH

Installing ZSH and use oh-my-zsh as base config then we customize it.

```bash
sudo apt install zsh fortune
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install Custom Plugins
# zsh syntax highlihgting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Copy our config files to home directory
cp -r .oh-my-zsh/* ~/.oh-my-zsh/
cp .zshrc ~/
```

## Neovim

Installing neovim and configuring it.
This part is WIP!

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
export PATH="$PATH:/opt/nvim/" #Add it to zshrc
```

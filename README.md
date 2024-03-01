# My Developer Setup
I should read this:
https://www.bugsnag.com/blog/tmux-and-vim/

### General Requirements
```
sudo apt install curl wget g++ cmake
```
- FiraCode nerd font!
```
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode.zip -d FiraCode
mkdir ~/.local/share/fonts
mv /tmp/FiraCode/FiraCodeNerdFont-Retina.ttf ~/.local/share/fonts/
fc-cache -f -v # clear and regenerate font cache
fc-list | grep "FiraCode" # confirming installation
rm -r /tmp/FiraCode*
```

## Tmux
tmux 3.x+ is required!
### Requirements
```
sudo apt install g++ cmake perl sed python3-pip xsel
sudo apt install tmux
pip install --user libtmux
# if the tmux-yank extension was not working properly try installing xclip
# sudo apt install xclip

# for enabling CPU temperature monitoring
sudo apt install lm-sensors
sudo sensors-detect
sudo service kmod start
```
- Note that the `.tmux.config.local` file in here is a hard link to the file `~/.tmux.config.local`
- Install ohmytmux from here first: https://github.com/gpakosz/.tmux. Then we customize it by editing the .tmux.config.local file
```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```
- Install tpm from here: https://github.com/tmux-plugins/tpm
- Copy config from repository to home directory
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf.local ~/
```

## ZSH
```
sudo apt install zsh fortune
```
- Install ohmyzsh from here: https://github.com/ohmyzsh/ohmyzsh
- Add all contents of the  .oh-my-zsh in this repo to the home directory
- Now we have to add custom plugins too!
- Install zsh-autosuggestions from here: 
  - add it to the plugins list in .zshrc
- Install zsh-syntax-highlighting from here: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
  - add it to the plugins list in .zshrc
- In the end copy the .zshrc file to home directory.

```
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install Custom Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# Install oh-my-zsh first then run these
cp -r .oh-my-zsh/* ~/.oh-my-zsh/
cp .zshrc ~/
```


## Neovim
```
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
sudo mkdir -p /opt/nvim
sudo mv nvim.appimage /opt/nvim/nvim
export PATH="$PATH:/opt/nvim/" #Add it to zshrc
```

# My Developer Setup
I should read this:
https://www.bugsnag.com/blog/tmux-and-vim/

## Tmux
tmux 3.x+ is required!
### Requirements
```
sudo apt install g++ cmake perl sed lm-sensors
pip install --user libtmux

# for enabling CPU temperature monitoring
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
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
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
# Install oh-my-zsh first then run these
cp -r .oh-my-zsh/* ~/.oh-my-zsh/
cp .zshrc ~/
```


## Neovim

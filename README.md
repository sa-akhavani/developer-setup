# My Developer Setup
I should read this:
https://www.bugsnag.com/blog/tmux-and-vim/

## Tmux
tmux 3.x+ is required!
### Requirements
```
sudo apt install g++ cmake perl sed lm-sensors

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


## Neovim

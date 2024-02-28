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
- Now we have to add custom plugins too!
- Install zsh-autosuggestions from here: 
  - add it to the plugins list in .zshrc
  - add custom settings to this path: ```~/.oh-my-zsh/custom/auto-suggest.sh
```
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=yellow,bg=black"
```
- Install zsh-syntax-highlighting from here: https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh
    - add it to the plugins list in .zshrc
- Disable automatic fortune in each line in the adben font directory
```
echo 'PROMPT="${RED_START}\$(prompt_context)${PR_BRIGHT_YELLOW}%~${PR_RESET}
${GREEN_START} "' >> ~/.oh-my-zsh/themes/adben.zsh-theme
```
vim ~/.oh-my-zsh/themes/
# change the line that says
# 
#
```
In the end copy the .zshrc file to home directory.


## Neovim

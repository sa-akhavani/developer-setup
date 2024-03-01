# Run this script and enjot the magical setup!

####
# Installing Dependencies
####
sudo apt install curl wget g++ cmake

####
# Installing Fonts
####
mkdir ~/.local/share/fonts/
cd /tmp
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip
unzip FiraCode.zip -d FiraCode
mv ./FiraCode/FiraCodeNerdFont-Retina.ttf ~/.local/share/fonts/
rm -r /tmp/FiraCode*
wget https://github.com/samuelngs/apple-emoji-linux/releases/latest/download/AppleColorEmoji.ttf
cp ./AppleColorEmoji.ttf ~/.local/share/fonts
fc-cache -f -v # clear and regenerate font cache
fc-list | grep "FiraCode" # confirming installation
fc-list | grep "AppleColorEmoji" # confirming installation

####
# WezTerm
####
curl -fsSL https://apt.fury.io/wez/gpg.key | sudo gpg --yes --dearmor -o /usr/share/keyrings/wezterm-fury.gpg
echo 'deb [signed-by=/usr/share/keyrings/wezterm-fury.gpg] https://apt.fury.io/wez/ * *' | sudo tee /etc/apt/sources.list.d/wezterm.list
sudo apt update
sudo apt install wezterm

####
# Tmux
####
sudo apt install g++ cmake perl sed python3-pip xsel xclip
sudo apt install tmux
pip install --user libtmux
# Installing Oh-My-Tmux
cd ~
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
# Installing Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

####
# ZSH
####
```bash
sudo apt install zsh fortune
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install Custom Plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```
####
# Neovim
####


####
# Copy Configurations
####
cp -r ./* ~/

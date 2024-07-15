# Load Custom Alias File
source ~/.config/fish/alias.fish

if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
end

# Created by `pipx` on 2023-10-13 17:54:22
set PATH $PATH /home/can/.local/bin
set PATH $PATH /home/can/.cargo/bin


# Install Starship
starship init fish | source

#!/usr/bin/env fish

sudo apt update

# git
sudo apt install git gh -y
git config --global init.defaultBranch main
git config --global user.name "Khaled Nasr"
git config --global user.email k.nasr92@gmail.com

# build stuff
sudo apt install build-essential cmake -y

# neovim dependencies
sudo apt install fzf ripgrep fd-find -y

# snap packages
sudo apt install snapd
sudo snap install nvim --classic --edge

# python and uv
sudo apt install python3-venv -y
curl -LsSf https://astral.sh/uv/install.sh | sh

# rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env.fish"
rustup component add rust-analyzer

# gui stuff
sudo apt-get install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxkbcommon-dev libssl-dev -y
sudo apt install libxcb-cursor0 qt6-wayland -y

# environment variables
set -Ux DISPLAY :0
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux QT_QPA_PLATFORM xcb

# ipython autoreload
mkdir -p .ipython/profile_default/startup
echo -e "%load_ext autoreload\n%autoreload 2" > .ipython/profile_default/startup/001.ipy

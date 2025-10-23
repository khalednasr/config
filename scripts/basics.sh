#!/usr/bin/env fish

sudo apt update

# git
sudo apt install git gh
git config --global init.defaultBranch main
git config --global user.name "Khaled Nasr"
git config --global user.email k.nasr92@gmail.com

# build stuff
sudo apt install build-essential cmake

# neovim dependencies
sudo apt install fzf ripgrep fd-find

# snap packages
sudo apt install snapd
sudo snap install nvim --classic --edge

# uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env.fish"
rustup component add rust-analyzer

# egui
sudo apt-get install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxkbcommon-dev libssl-dev

set -Ux DISPLAY :0

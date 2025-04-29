#!/usr/bin/env fish

sudo apt update

# git
sudo apt install git gh
git config --global init.defaultBranch main
git config --global user.name "Khaled Nasr"
git config --global user.email k.nasr92@gmail.com

# build stuff
sudo apt install build-essential cmake

# snap packages
sudo apt install snapd
sudo snap install helix --classic --edge
sudo snap install zellij --classic --edge
sudo snap install yazi --classic --edge

# python
fish_add_path ~/.local/bin # for pipx
sudo apt install python3-venv python3-pip python3-pyqt5 python3-numpy python3-scipy python3-matplotlib pipx
pipx install python-lsp-server
pipx inject python-lsp-server python-lsp-ruff
pipx inject python-lsp-server python-lsp-black
pipx inject python-lsp-server jedi-language-server

# rust
curl --proto '=https' --tlsv1.2 https://sh.rustup.rs -sSf | sh
source "$HOME/.cargo/env.fish"
rustup component add rust-analyzer

# egui
sudo apt-get install libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev libxkbcommon-dev libssl-dev
#rustup target add wasm32-unknown-unknown
#cargo install --locked trunk

set -Ux DISPLAY :0

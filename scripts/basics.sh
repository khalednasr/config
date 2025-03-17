#!/usr/bin/env fish

sudo apt update

# wsl utils
sudo apt install wslu

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
sudo apt install python3-venv python3-pip python3-pyqt5 python3-numpy python3-scipy python3-matplotlib pipx
pipx install python-lsp-server
pipx inject python-lsp-server python-lsp-ruff python-lsp-black

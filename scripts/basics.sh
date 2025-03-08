#!/usr/bin/env fish

sudo apt update

# git
sudo apt install git gh
git config --global init.defaultBranch main
git config --global user.name "Khaled Nasr"
git config --global user.email k.nasr92@gmail.com

# snap packages
sudo apt install snapd
sudo snap install helix --classic
sudo snap install zellij --classic
sudo snap install yazi --classic

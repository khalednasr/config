#!/usr/bin/env fish

sudo locale-gen en_US.UTF-8
sudo ~/xilinx/Vivado/2024.2/data/xicom/cable_drivers/lin64/install_script/install_drivers/install_drivers
fish_add_path ~/xilinx/Vivado/2024.2/bin
fish_add_path ~/xilinx/Vitis/2024.2/bin
fish_add_path ~/xilinx/Vitis_HLS/2024.2/bin

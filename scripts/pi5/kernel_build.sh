#!/usr/bin/env fish
sudo apt install bc bison flex libssl-dev make libncurses5-dev

git clone --depth=1 --branch rpi-6.14.y https://github.com/raspberrypi/linux

cd linux
set KERNEL kernel_2712
make bcm2712_defconfig
make menuconfig
make -j6 Image.gz modules dtbs

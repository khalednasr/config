#!/usr/bin/env fish
# cd ~
# # prerequisites:
# sudo apt-get install git help2man perl make autoconf g++ flex bison ccache
# sudo apt-get install libgoogle-perftools-dev numactl perl-doc
# sudo apt-get install libfl2  # ubuntu only (ignore if gives error)
# sudo apt-get install libfl-dev  # ubuntu only (ignore if gives error)
# sudo apt-get install zlibc zlib1g zlib1g-dev  # ubuntu only (ignore if gives error)

# git clone https://github.com/verilator/verilator   # only first time

# # every time you need to build:
# cd verilator
# #git checkout master      # use development branch (e.g. recent bug fixes)
# git checkout stable      # use most recent stable release
# #git checkout v{version}  # switch to specified release version

# autoconf         # create ./configure script
# ./configure      # configure and create makefile
# make -j `nproc`  # build verilator itself (if error, try just 'make')
# sudo make install
# cd -

sudo apt install iverilog gtkwave

#!/usr/bin/env fish

sudo apt-get install jq minicom make cmake gdb-multiarch automake autoconf libtool libftdi-dev libusb-1.0-0-dev pkg-config clang-format -y

wget https://raw.githubusercontent.com/raspberrypi/pico-setup/master/pico_setup.sh

SKIP_VSCODE=1 SKIP_UART=1 bash ./pico_setup.sh

set -Ux PICO_SDK_PATH $PWD/pico/pico-sdk
set -Ux PICO_EXAMPLES_PATH $PWD/pico/pico-examples
set -Ux PICO_EXTRAS_PATH $PWD/pico/pico-extras
set -Ux PICO_PLAYGROUND_PATH $PWD/pico/pico-playground

cd $PICO_SDK_PATH/../picotool/build; sudo cmake --install .; cd -
rm pico_setup.sh

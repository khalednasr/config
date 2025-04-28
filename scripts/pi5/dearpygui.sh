#!/usr/bin/env fish

# set -Ux MESA_GL_VERSION_OVERRIDE 4.5

sudo apt install git cmake xorg-dev libglu1-mesa-dev libgl1-mesa-dev
git clone --recursive --depth 1 https://github.com/hoffstadt/DearPyGui
cd DearPyGui
python -m setup bdist_wheel --plat-name linux_aarch64 --dist-dir dist
pip install dist/dearpygui*.whl
cd ..
rm -rf DearPyGui

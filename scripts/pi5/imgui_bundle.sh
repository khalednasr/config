#!/usr/bin/env fish

# Switch Pi5 to X11 first


sudo apt install xorg-dev
git clone https://github.com/pthom/imgui_bundle.git
cd imgui_bundle
git submodule update --init --recursive
pip install -v
pip install opencv-python
pip install pyGLM
cd ..
rm -rf imgui_bundle

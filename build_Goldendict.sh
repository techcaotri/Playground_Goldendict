#!/bin/bash -x
pushd .
git clone https://github.com/Abs62/goldendict Goldendict_src
cd Goldendict_src
sudo apt install libzstd-dev
/home/tripham/Qt/5.15.2/gcc_64/bin/qmake CONFIG+=release PREFIX=/usr CONFIG+=old_hunspell CONFIG+=zim_support ./goldendict.pro
make -j$(($(nproc)-2))
make INSTALL_ROOT=/home/tripham/Dev/Playground_Goldendict/appdir -j$(nproc) install ; find /home/tripham/Dev/Playground_Goldendict/appdir/
popd
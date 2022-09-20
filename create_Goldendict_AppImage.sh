#!/bin/bash -x
pushd .
wget -c -nv "https://github.com/probonopd/linuxdeployqt/releases/download/continuous/linuxdeployqt-continuous-x86_64.AppImage"
chmod a+x linuxdeployqt-continuous-x86_64.AppImage
# unset QTDIR; unset QT_PLUGIN_PATH ; unset LD_LIBRARY_PATH
export LD_LIBRARY_PATH=/home/tripham/Qt/5.15.2/gcc_64/lib:$LD_LIBRARY_PATH
# Add ssl libraries to .Appimage
mkdir -p appdir/usr/lib/
cp /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0 appdir/usr/lib/
cp /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 appdir/usr/lib/
export VERSION=`cd Goldendict_src;expr $(git rev-parse --short HEAD)` # linuxdeployqt uses this for naming the file
./linuxdeployqt-continuous-x86_64.AppImage appdir/usr/share/applications/*.desktop -qmake=/home/tripham/Qt/5.15.2/gcc_64/bin/qmake -appimage 
popd
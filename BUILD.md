## 1. Reference:
https://github.com/Abs62/goldendict/blob/master/.travis.yml

## 2. Build AppImage steps:
1. Build OpenCC (maybe optional):
   ```
   ./build_OpenCC.sh
   ```
2. <a name="step_2"></a>Download and install Qt 5.12.2 Linux package from Qt archive website: https://download.qt.io/official_releases/qt/5.15/5.15.2/single/qt-everywhere-src-5.15.2.zip
3. Download QtWebKit 5.212.0 Alpha 4 release package at: https://github.com/qtwebkit/qtwebkit/releases/download/qtwebkit-5.212.0-alpha4/qtwebkit-Linux-RHEL_7_6-GCC-Linux-RHEL_7_6-X86_64.7z
4. Install/extract QtWebKit release package to Qt 5.12.2 at [step 2](#step_2). Modified folders are *include*, *lib*, *libexec*, *mkspecs*, *qml*
5. Build Goldendict source code:
   ```
   ./build_Goldendict.sh
   ```
6. Create the Goldendict AppImage:
   ```
   ./create_Goldendict_AppImage.sh
   ```
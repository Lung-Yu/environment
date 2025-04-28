#downlaod android-stdio IDE and configuration
wget https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip
unzip android-studio-ide-162.4069837-linux.zip
sudo mv android-studio /opt/
sudo rm android-studio-ide-162.4069837-linux.zip

#make share link 
echo "[Desktop Entry]
Version=1.0
Type=Application
Name=Android Studio
Exec="/opt/android-studio/bin/studio.sh" %f
Icon=/opt/android-studio/bin/studio.png
Categories=Development;IDE;
Terminal=false
StartupNotify=true
StartupWMClass=android-studio" >> ~/.local/share/applications/androidstudio.desktop

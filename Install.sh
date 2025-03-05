#   Creating script variables	>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

TOOL_INSTALL_STATUS=0

#   Updating APT repos	  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt update && sudo apt upgrade

#   Installing required setup repos   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt install python3 meson ninja-build gcc feh make xorg libxft-dev libx11-dev libxinerama-dev -y

#   Installing other repos    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt install kitty htop cowsay neovim neofetch ranger chromium gh -y && TOOL_INSTALL_STATUS=1 &

#   Creating directories	  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

mkdir ~/Programming

#   Cloning applications    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

cd ~/ && git clone https://git.suckless.org/dwm && git clone https://git.suckless.org/dmenu && git clone https://github.com/yshui/picom

#   Moving config files	    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

mv ~/Linux_config_files/dwmconfig.h ~/dwm/config.h
mv ~/Linux_config_files/dmenuconfig.h ~/dmenu/config.h
mv ~/Linux_config_files/.remaps.sh ~/.remaps.sh
mv ~/Linux_config_files/wallpaper ~/wallpaper
mv ~/Linux_config_files/.config ~/.config

#   Building cloned applications    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

cd ~/dwm && sudo make clean install && cd ~/dmenu && sudo make clean install 

#   File creation & appends   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

echo "feh --bg-fill -z ~/wallpaper/ &" >> ~/.xinitrc && echo "xset -b &" >> ~/.xinitrc && echo "exec dwm" >> ~/.xinitrc 
echo "source ~/.remaps.sh" >> ~/.bashrc

#   End of install    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

while [ $TOOL_INSTALL_STATUS -ne 1 ]
do
  clear
  echo "Finalising install"
  sleep 2s
done

clear
echo "Install complete.  Rebooting in 3"
sleep 1s
clear
echo "Install complete.  Rebooting in 2"
sleep 1s
clear
echo "install complete.  Rebooting in 1"
sleep 1s
clear

sudo reboot

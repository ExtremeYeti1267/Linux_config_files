#   Updating APT repos	  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt update && sudo apt upgrade

#   Installing required setup repos   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt install gcc python3 python3-pip feh picom make xorg libxft-dev libx11-dev libxinerama-dev -y

#   Installing other repos    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo apt install tree kitty htop cowsay neovim neofetch ranger chromium gh -y

#   Creating directories	  >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

mkdir ~/Programming

#   Cloning applications    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

cd ~/ && git clone https://git.suckless.org/dwm && git clone https://git.suckless.org/dmenu

#   Moving config files	    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

mv ~/Linux_config_files/dwmconfig.h ~/dwm/config.h
mv ~/Linux_config_files/dmenuconfig.h ~/dmenu/config.h
mv ~/Linux_config_files/.remaps.sh ~/.remaps.sh
mv ~/Linux_config_files/wallpaper ~/wallpaper
mv ~/Linux_config_files/.config ~/.config

#   Building suckless applications    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

cd ~/dwm && sudo make clean install
cd ~/dmenu && sudo make clean install 

#   File creation & appends   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

echo "feh --bg-fill -z ~/wallpaper/ &" >> ~/.xinitrc && echo "picom &" >> ~/.xinitrc && echo "xset -b &" >> ~/.xinitrc && echo "exec dwm" >> ~/.xinitrc 
echo "source ~/.remaps.sh" >> ~/.bashrc

#   End of install    >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

sudo reboot

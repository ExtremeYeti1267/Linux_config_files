sudo apt update && sudo apt upgrade && sudo apt install gh gcc feh make xorg kitty cowsay neovim neofetch ranger chromium libxft-dev libx11-dev libxinerama-dev -y

mv wallpaper ~/wallpaper && mv .config ~/.config

cd ~/ && git clone https://git.suckless.org/dwm && git clone https://git.suckless.org/dmenu

mv ~/Linux_config_files/dwmconfig.h ~/dwm/config.h && mv ~/Linux_config_files/dmenuconfig.h ~/dmenu/config.h

cd ~/dwm && sudo make clean install && cd ~/dmenu && sudo make clean install 

touch ~/.remaps.sh
touch ~/.xinitrc

feh --bg-fill ~/wallpaper/abstract.jpg

echo "~/./fehbg" >> ~/.xinitrc && echo "exec dwm" >> ~/.xinitrc && echo "xset -b" >> ~/.xinitrc
echo "source .remaps.sh" >> ~/.bashrc
echo "alias cls=\"clear\"" >> ~/.remaps.sh && echo "alias exe=\"./EXE\"" >> ~/.remaps.sh && echo "alias EXE=\"./EXE\"" >> ~/.remaps.sh

sudo reboot

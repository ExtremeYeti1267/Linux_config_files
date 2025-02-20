<<<<<<< HEAD
sudo apt update && sudo apt upgrade && sudo apt install gh gcc feh make xorg kitty cowsay neovim neofetch libxft-dev libx11-dev libxinerama-dev -y
=======
sudo apt update && sudo apt upgrade && sudo apt install gh gcc feh make xorg kitty cowsay neovim neofetch ranger libxft-dev libx11-dev libxinerama-dev -y
>>>>>>> f3b5fafe5e823444a7e0fe9186a2b4602adfca6f

git clone https://git.suckless.org/dwm && git clone https://git.suckless.org/dmenu

mv dwm ~/dwm && mv dmenu ~/dmenu && mv abstract.png ~/abstract.png

cd ~/ && mkdir .config && cd .config && mkdir kitty && mv kitty.conf ~/.config/kitty/kitty.config

cd ~/Linux_config_files && mv config.h ~/dwm/config.h && cd ~/dwm/ && sudo make clean install

touch ~/.remaps.sh
touch ~/.xinitrc

echo "exec dwm" >> ~/.xinitrc && echo "feh --bg-center ~/abstract.png" >> ~/.xinitrc && echo "xset -b" >> ~/.xinitrc

echo "source .remaps.sh" >> ~/.bashrc

echo "alias cls=\"clear\"" >> ~/.remaps.sh && echo "alias exe=\"./EXE\"" >> ~/.remaps.sh && echo "alias EXE=\"./EXE\"" >> ~/.remaps.sh

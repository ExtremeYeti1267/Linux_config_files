sudo apt update && sudo apt upgrade && sudo apt install gh gcc feh make xorg kitty cowsay neovim neofetch ranger libxft-dev libx11-dev libxinerama-dev -y

git clone https://git.suckless.org/dwm && git clone https://git.suckless.org/dmenu

mv dwm ~/dwm && mv dmenu ~/dmenu && mv abstract.jpg ~/abstract.jpg

mkdir ~/.config/kitty && mv kitty.conf ~/.config/kitty/kitty.config
mv config.h ~/dwm/config.h && cd ~/dwm/ && sudo make clean install

touch ~/.remaps.sh
touch ~/.xinitrc

echo "exec dwm" >> ~/.xinitrc && echo "feh --bg-center ~/abstract.jpg" >> ~/.xinitrc && echo "xset -b" >> ~/.xinitrc
echo "source .remaps.sh" >> ~/.bashrc
echo "alias cls=\"clear\"" >> ~/.remaps.sh && echo "alias exe=\"./EXE\"" >> ~/.remaps.sh && echo "alias EXE=\"./EXE\"" >> ~/.remaps.sh

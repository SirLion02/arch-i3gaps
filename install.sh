# install additional package
sudo pacman -S i3-gaps pcmanfm bashtop neovim picom polkit network-manager-applet lxappearance alacritty polybar nitrogen flameshot rofi wget unzip qutebrowser

#cd dotfiles/
cp -rv i3/ alacritty/ polybar/ ~/.config/
chmod +x ~/.config/polybar/polybar-launch.sh
chmod +x ~/.config/i3/volume-max-100.sh

# add xinitrc
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# Font for polybar
mkdir Nerd\ Fonts

unzip FiraCode.zip -d Nerd\ Fonts
unzip Hack.zip -d Nerd\ Fonts

sudo mv Nerd\ Fonts /usr/share/fonts

#font for alacritty
unzip ubuntu-font-family-0.83.zip

sudo mv ubuntu-font-family-0.83/

# wallpaper
sudo cp -rv low-poly* wallpaper.jpeg /usr/share/backgrounds/

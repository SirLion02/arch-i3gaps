# install xorg + display driver
sudo pacman -S xorg xorg-xinit xf86-video-amdgpu

# install additional package
sudo pacman -S i3-gaps thunar htop neofetch git neovim light picom lxappearance alacritty polybar nitrogen flameshot rofi wget unzip links qutebrowser

#cd dotfiles/
cp -rv i3/ alacritty/ polybar/ ~/.config/
chmod +x ~/.config/polybar/polybar-launch/sh

# add xinitrc
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# Font for polybar
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.zip

mkdir Nerd\ Fonts
unzip FiraCode.zip -d Nerd\ Fonts
unzip Hack.zip -d Nerd\ Fonts

sudo mv Nerd\ Fonts /usr/share/fonts

rm FiraCode.zip
rm Hack.zip

# wallpaper
sudo cp wallpaper.jpeg /usr/share/backgrounds/wallpaper.jpeg

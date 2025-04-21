#!/bin/bash

# Install yay
sudo pacman -S --needed --noconfirm base-devel git
if ! command -v yay &>/dev/null; then
  git clone https://aur.archlinux.org/yay.git /tmp/yay
  cd /tmp/yay || exit
  makepkg -si --noconfirm
  cd ~
fi

# Update system
sudo pacman -Syu --noconfirm

# Official repo packages
sudo pacman -S --noconfirm \
  kitty fish hyprland python-pywal16 \
  waypaper wofi hypridle hyprlock hyprpaper \
  neofetch neovim wlogout thunar btop \
  dunst swww brightnessctl firefox

# AUR packages
yay -S --noconfirm \
  visual-studio-code-bin \
  ghostty-bin \
  discord \
  hyprshot \
  osu-lazer

# Move .config contents
echo "📁 Moving config files..."
mkdir -p ~/.config
cp -rT ~/.dotfiles/.config ~/.config

# Move scripts
echo "📁 Moving scripts..."
mkdir -p ~/scripts
cp -rT ~/.dotfiles/scripts ~/scripts

echo "✅ All done!"

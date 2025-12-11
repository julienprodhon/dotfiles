#!/bin/bash
set -e

echo "=== Installing Applications ==="

# Install from official repos
sudo pacman -S --needed --noconfirm neovim alacritty signal-desktop

# Install from AUR
yay -S --needed --noconfirm obsidian protonvpn zen-browser-bin keepass-xc telegram-desktop

echo "Applications installed!"

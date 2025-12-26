#!/bin/bash
set -e

echo "=== Installing Applications ==="

sudo pacman -S --needed --noconfirm neovim signal-desktop

yay -S --needed --noconfirm obsidian protonvpn proton-pass zen-browser-bin telegram-desktop

echo "Applications installed!"

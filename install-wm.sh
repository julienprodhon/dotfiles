#!/bin/bash
set -e

echo "=== Installing WM and Utilities ==="

# Install base dependencies
sudo pacman -Syu --needed --noconfirm base-devel git curl wget

# Install yay if not present
if ! command -v yay &>/dev/null; then
    echo "Installing yay..."
    TEMP=$(mktemp -d)
    cd "$TEMP"
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
    rm -rf "$TEMP"
fi

# Install WM and utilities
yay -S --needed --noconfirm qt5-wayland niri sddm zsh tmux

# Install Dank Material Shell
curl -fsSL https://install.danklinux.com | sh

echo "WM and utilities installed!"

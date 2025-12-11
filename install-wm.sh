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
yay -S --needed --noconfirm qt5-wayland sddm zsh tmux unzip npm man-pages tldr

# Install oh-my-zsh
if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
    echo "Installing oh-my-zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
    echo "oh-my-zsh already installed"
fi

# Install Dank Material Shell, Niri and Ghostty
curl -fsSL https://install.danklinux.com | sh

yay -S -needed --noconfirm greetd-dms-greeter-git
dms greeter enable
dms greeter sync

echo "WM and utilities installed!"

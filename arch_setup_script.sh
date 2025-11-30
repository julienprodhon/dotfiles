#!/bin/bash
set -e

# Minimal Arch Linux Setup Script
# Niri + Dank Material Shell

# Configuration
GITHUB_REPO="${GITHUB_REPO:-}"
CONFIG_DIR="${CONFIG_DIR:-$HOME/.config}"

# Package lists
PACMAN_PKGS=(
    neovim
    alacritty
    signal-desktop
)

AUR_PKGS=(
    niri
    obsidian
    protonvpn
    zen-browser-bin
)

install_yay() {
    if command -v yay &>/dev/null; then
        echo "yay is already installed"
        return
    fi
    
    echo "Installing yay..."
    TEMP=$(mktemp -d)
    cd "$TEMP"
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ~
    rm -rf "$TEMP"
}

install_packages() {
    echo "Installing packages..."
    sudo pacman -Syu --needed --noconfirm "${PACMAN_PKGS[@]}"
    yay -S --needed --noconfirm "${AUR_PKGS[@]}"
}

install_dms() {
    echo "Installing Dank Material Shell..."
    curl -fsSL https://install.danklinux.com | sh
}

load_configs() {
    [[ -z "$GITHUB_REPO" ]] && return
    echo "Loading configs from $GITHUB_REPO..."
    
    TEMP=$(mktemp -d)
    git clone "$GITHUB_REPO" "$TEMP"
    
    # Copy .config dirs
    for dir in "$TEMP"/{,.config/}{niri,alacritty,nvim,quickshell}; do
        [[ -d "$dir" ]] && cp -r "$dir" "$CONFIG_DIR/"
    done
    
    # Copy dotfiles
    cp -n "$TEMP"/.{bashrc,zshrc,profile} ~/ 2>/dev/null || true
    
    rm -rf "$TEMP"
}

# Main
echo "Arch Linux Setup - Niri + DMS"

# Install base dependencies first
echo "Installing base dependencies..."
sudo pacman -Syu --needed --noconfirm base-devel git

install_yay
install_packages
install_dms
load_configs

echo "Done! Reboot and select Niri from your display manager."

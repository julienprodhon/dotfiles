#!/bin/bash
set -e

echo "=== Installing WM and Utilities ==="

sudo pacman -Syu --needed --noconfirm base-devel git curl wget

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

yay -S --needed --noconfirm qt5-wayland sddm zsh tmux npm man-pages tldr

if [[ ! -d "$HOME/.oh-my-zsh" ]]; then
  echo "Installing oh-my-zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
else
  echo "oh-my-zsh already installed"
fi

ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]]; then
  echo "Installing zsh-autosuggestions..."
  git clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
else
  echo "zsh-autosuggestions already installed"
fi

if [[ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]]; then
  echo "Installing zsh-syntax-highlighting..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
else
  echo "zsh-syntax-highlighting already installed"
fi

curl -fsSL https://install.danklinux.com | sh
yay -S --needed --noconfirm greetd-dms-greeter-git
dms greeter enable
dms greeter sync

echo "WM and utilities installed!"

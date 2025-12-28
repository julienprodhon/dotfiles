#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${HOME}/.config"

echo "=== Syncing Dotfiles ==="

echo "Syncing config directories..."
for dir in "$SCRIPT_DIR/config"/*; do
  [[ -d "$dir" ]] || continue
  dir_name=$(basename "$dir")
  echo "Syncing $dir_name..."
  rm -rf "$CONFIG_DIR/$dir_name"
  cp -r "$dir" "$CONFIG_DIR/"
done

echo "Syncing dotfiles to home directory..."
for dotfile in .bashrc .zshrc .profile; do
  [[ -f "$SCRIPT_DIR/$dotfile" ]] && cp -f "$SCRIPT_DIR/$dotfile" ~/
done

echo "Updating .zshrc with plugin configuration..."
sed -i 's/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

echo "Dotfiles synced successfully!"

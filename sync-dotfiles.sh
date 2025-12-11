#!/bin/bash
set -e

# Script should be in dotfiles repo root alongside config/ folder
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="${HOME}/.config"

echo "=== Syncing Dotfiles ==="

# Sync all directories from config/ folder
if [[ -d "$SCRIPT_DIR/config" ]]; then
    for dir in "$SCRIPT_DIR/config"/*; do
        [[ -d "$dir" ]] || continue
        
        dir_name=$(basename "$dir")
        echo "Syncing $dir_name..."
        rm -rf "$CONFIG_DIR/$dir_name"
        cp -r "$dir" "$CONFIG_DIR/"
    done
else
    echo "No config/ folder found in $SCRIPT_DIR"
fi

# Copy dotfiles from repo root (don't overwrite existing)
cp -n "$SCRIPT_DIR"/.{bashrc,zshrc,profile} ~/ 2>/dev/null || true

echo "Dotfiles synced!"

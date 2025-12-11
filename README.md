Minimal Arch Linux setup with Niri window manager and personal configurations.

```
dotfiles/
├── install-wm.sh          # Install window manager and utilities
├── install-apps.sh        # Install applications
├── sync-dotfiles.sh       # Sync configurations to ~/.config
├── config/                # Application configs
├── .bashrc
├── .zshrc
└── .profile
```

Run setup scripts in order:
```bash
./install-wm.sh      # Install WM, utilities, and oh-my-zsh
./install-apps.sh    # Install applications
./sync-dotfiles.sh   # Sync your configs
```

- Existing configs are overwritten when syncing
- Dotfiles (.bashrc, .zshrc, .profile) are copied only if they don't exist locally

# Window Manager & Utilities (install-wm.sh)
- **Base**: base-devel, git, curl, wget
- **AUR Helper**: yay
- **Window Manager**: niri, sddm, qt5-wayland
- **Shell**: zsh, oh-my-zsh
- **Utilities**: tmux
- **Desktop**: Dank Material Shell

# Applications (install-apps.sh)
- **Editor**: neovim
- **Terminal**: alacritty
- **Communication**: signal-desktop, telegram-desktop
- **Browser**: zen-browser-bin
- **Productivity**: obsidian, keepass-xc
- **VPN**: protonvpn

# Arch Linux Setup

Minimal Arch Linux setup with Niri window manager and personal configurations.

```
dotfiles/
├── install-wm.sh          
├── install-apps.sh        
├── sync-dotfiles.sh       
├── config/                
├── .bashrc
├── .zshrc
└── .profile
```

## Usage

Run setup scripts in order:

```bash
./install-wm.sh
./install-apps.sh
./sync-dotfiles.sh
```

Existing configs are overwritten when syncing. Dotfiles (.bashrc, .zshrc, .profile) are copied only if they don't exist locally.

## Window Manager & Utilities

- **Base**: base-devel, git, curl, wget
- **AUR Helper**: yay
- **Window Manager**: niri, sddm, qt5-wayland
- **Shell**: zsh, oh-my-zsh
- **Utilities**: tmux, npm, man-pages, tldr
- **Desktop**: Dank Material Shell, greetd-dms-greeter-git

## Applications

- **Editor**: neovim
- **Communication**: signal-desktop, telegram-desktop
- **Browser**: zen-browser-bin
- **Productivity**: obsidian, proton-pass
- **VPN**: protonvpn

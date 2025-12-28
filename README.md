# Arch Linux Setup

Automated Arch Linux installation with DMS (Dank Material Shell), Niri, and Ghostty.

## Installation

### Step 1: Generate archinstall Configuration

```bash
./generate-archinstall-json.sh
```

### Step 2: Install Base System

```bash
archinstall --config archinstall_user_configuration.json
```

You'll manually configure: disk partitioning, hostname, passwords, user accounts, timezone.

### Step 3: Post-Installation

After rebooting, run:

```bash
./setup-system.sh
./sync-dotfiles.sh
```

Log out and log back in for changes to take effect.

## Package Files

- **core-extra-packages.txt** - Installed via archinstall
- **aur-packages.txt** - Installed via yay

## Customization

Set DMS wallpaper and profile:
```bash
dms ipc call wallpaper set /path/to/wallpaper.jpg
dms ipc call profile setImage /path/to/image.jpg
```

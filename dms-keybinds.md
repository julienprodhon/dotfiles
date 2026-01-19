# DMS (DankMaterialShell) Keybinds

Keybindings handled by DMS via IPC calls. These are separate from Niri compositor keybindings.

## Application Launchers

| Keybind | Action |
|---------|--------|
| Mod+Space | Application Launcher (Spotlight) |
| Mod+V | Clipboard Manager |
| Mod+M | Task Manager (Process List) |
| Mod+, | Settings |
| Mod+Y | Browse Wallpapers |
| Mod+N | Notification Center |
| Mod+Shift+N | Notepad |

## Security

| Keybind | Action |
|---------|--------|
| Mod+Alt+L | Lock Screen |
| Ctrl+Alt+Delete | Task Manager |

## Audio Controls

| Keybind | Action |
|---------|--------|
| XF86AudioRaiseVolume | Volume Up (+3) |
| XF86AudioLowerVolume | Volume Down (-3) |
| XF86AudioMute | Toggle Mute |
| XF86AudioMicMute | Toggle Mic Mute |

## Brightness Controls

| Keybind | Action |
|---------|--------|
| XF86MonBrightnessUp | Brightness Up (+5) |
| XF86MonBrightnessDown | Brightness Down (-5) |

## Notes

- These bindings are defined in `~/.config/niri/dms/binds.kdl`
- All actions use `dms ipc call <widget> <action>` under the hood
- If switching to a different shell, replace this file with the new shell's bindings

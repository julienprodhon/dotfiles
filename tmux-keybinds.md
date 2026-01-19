# Tmux Keybinds

Prefix key is **Ctrl+a** (changed from default Ctrl+b).

All commands below require pressing the prefix first, then the key (e.g., `Ctrl+a` then `|`).

## Pane Splitting

| Keybind | Action |
|---------|--------|
| \| | Split horizontally (side by side) |
| - | Split vertically (top/bottom) |

## Pane Navigation

| Keybind | Action |
|---------|--------|
| h | Select pane left |
| j | Select pane down |
| k | Select pane up |
| l | Select pane right |
| Left | Select pane left |
| Down | Select pane down |
| Up | Select pane up |
| Right | Select pane right |

## Pane Resizing

| Keybind | Action |
|---------|--------|
| H | Resize pane left (+5) |
| J | Resize pane down (+5) |
| K | Resize pane up (+5) |
| L | Resize pane right (+5) |

## Window Navigation

| Keybind | Action |
|---------|--------|
| n | Next window |
| p | Previous window |
| 0-9 | Select window by number (default) |

## Default Keybinds (not overridden)

| Keybind | Action |
|---------|--------|
| c | Create new window |
| & | Kill current window |
| x | Kill current pane |
| z | Toggle pane zoom |
| d | Detach from session |
| s | List sessions |
| w | List windows |
| , | Rename current window |
| $ | Rename current session |
| [ | Enter copy mode |
| ] | Paste buffer |
| ? | List all keybindings |
| : | Command prompt |
| t | Show clock |

## Copy Mode (vi-style)

In copy mode (prefix + [):

| Keybind | Action |
|---------|--------|
| v | Begin selection |
| y | Copy selection |
| q | Exit copy mode |
| / | Search forward |
| ? | Search backward |
| n | Next search match |
| N | Previous search match |

## Session Management (default)

| Keybind | Action |
|---------|--------|
| ( | Switch to previous session |
| ) | Switch to next session |
| L | Switch to last session |

## Settings

| Setting | Value |
|---------|-------|
| Prefix | Ctrl+a |
| Mouse | Enabled |
| Base index | 1 (windows and panes start at 1) |
| Terminal | tmux-256color with RGB support |

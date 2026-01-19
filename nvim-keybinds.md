# Neovim Keybinds

Leader key is **Space**. LocalLeader is **\\**.

## Window Navigation (Custom)

| Keybind | Action |
|---------|--------|
| Ctrl+h | Move to left window |
| Ctrl+j | Move to bottom window |
| Ctrl+k | Move to top window |
| Ctrl+l | Move to right window |

## Telescope (Fuzzy Finder)

| Keybind | Action |
|---------|--------|
| Space ff | Find files |
| Space fg | Live grep (search in files) |
| Space fb | List buffers |
| Space fh | Help tags |

## Oil (File Browser)

Global:

| Keybind | Action |
|---------|--------|
| - | Open parent directory |

Inside Oil buffer:

| Keybind | Action |
|---------|--------|
| Enter | Select/open file |
| - | Go to parent directory |
| Ctrl+v | Open in vertical split |
| Ctrl+x | Open in horizontal split |
| Ctrl+p | Preview file |
| Ctrl+c | Close Oil |
| _ | Open current working directory |
| ` | Change directory |
| ~ | Change tab directory |
| g? | Show help |
| gs | Change sort |
| gx | Open external |
| g. | Toggle hidden files |

## LSP (Language Server)

Available when LSP is attached:

| Keybind | Action |
|---------|--------|
| gd | Go to definition |
| gD | Go to declaration |
| gi | Go to implementation |
| gr | List references |
| K | Hover documentation |
| Space D | Type definition |
| Space rn | Rename symbol |
| Space ca | Code action |
| Space e | Show diagnostic float |
| Space f | Format buffer |
| [d | Previous diagnostic |
| ]d | Next diagnostic |

## Completion (nvim-cmp)

In insert mode when completion menu is visible:

| Keybind | Action |
|---------|--------|
| Ctrl+Space | Trigger completion |
| Enter | Confirm selection |
| Tab | Next item / expand snippet / jump |
| Shift+Tab | Previous item / jump back |

## Comment.nvim (Default)

| Keybind | Mode | Action |
|---------|------|--------|
| gcc | Normal | Toggle line comment |
| gc | Normal | Toggle comment (motion) |
| gc | Visual | Toggle comment selection |
| gbc | Normal | Toggle block comment |
| gb | Visual | Toggle block comment selection |

## vim-table-mode (Default)

| Keybind | Action |
|---------|--------|
| \\tm | Toggle table mode |
| \\tt | Tableize (convert to table) |
| \|\| | Expand table (in insert mode) |
| __ | Expand table horizontal line |

Inside table:

| Keybind | Action |
|---------|--------|
| [| | Move to previous cell |
| ]| | Move to next cell |
| {| | Move to cell above |
| }| | Move to cell below |

## VimTeX (LaTeX)

LocalLeader is **\\**. Available in .tex files:

| Keybind | Action |
|---------|--------|
| \\ll | Compile (continuous) |
| \\lk | Stop compilation |
| \\lv | View PDF |
| \\lt | Open TOC |
| \\lc | Clean auxiliary files |
| \\le | Show errors |
| dse | Delete surrounding environment |
| cse | Change surrounding environment |
| tse | Toggle starred environment |

## Essential Vim Defaults

### Normal Mode

| Keybind | Action |
|---------|--------|
| h/j/k/l | Move left/down/up/right |
| w/b | Next/previous word |
| e | End of word |
| 0/$ | Start/end of line |
| gg/G | Start/end of file |
| Ctrl+d/u | Half page down/up |
| Ctrl+f/b | Full page down/up |
| / | Search forward |
| ? | Search backward |
| n/N | Next/previous search match |
| * | Search word under cursor |
| dd | Delete line |
| yy | Yank line |
| p/P | Paste after/before |
| u | Undo |
| Ctrl+r | Redo |
| . | Repeat last change |
| >> / << | Indent/unindent line |
| zz | Center cursor on screen |
| :w | Save |
| :q | Quit |
| :wq | Save and quit |

### Window Management

| Keybind | Action |
|---------|--------|
| Ctrl+w s | Split horizontal |
| Ctrl+w v | Split vertical |
| Ctrl+w q | Close window |
| Ctrl+w o | Close other windows |
| Ctrl+w = | Equalize windows |
| Ctrl+w +/- | Increase/decrease height |
| Ctrl+w </> | Decrease/increase width |

### Buffers

| Keybind | Action |
|---------|--------|
| :bn | Next buffer |
| :bp | Previous buffer |
| :bd | Delete buffer |
| :ls | List buffers |

## Settings

| Setting | Value |
|---------|-------|
| Leader | Space |
| LocalLeader | \\ |
| Line numbers | Relative |
| Tab width | 2 spaces |
| Clipboard | System clipboard (unnamedplus) |
| Auto-format | On save (via LSP) |

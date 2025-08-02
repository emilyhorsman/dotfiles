# Setup

1. Install [chezmoi](https://www.chezmoi.io/)
2. Run `chezmoi init emilyhorsman`
3. Run `chezmoi apply` (or `chezmoi diff` to first see the changes)

# Packages

Packages for Homebrew or Pacman are installed declaratively on `chezmoi apply`.
The list is in `.chezmoidata/packages.yaml`.

# Themes

- Light mode: [Catppuccin](https://catppuccin.com/) Latte
- Dark mode: [Catppuccin](https://catppuccin.com/) Mocha

# Neovim Plugins

## checkmate.nvim
Markdown todo list manager that can sort tasks by completion status. When you archive tasks, completed items are moved to the bottom while preserving their nested structure and associated text.

**Key Commands:**
- `:CheckmateArchive` - Move all completed tasks to the bottom under "## Completed" section
- `:CheckmateToggle` - Toggle checkbox state
- `:CheckmateReload` - Reload checkmate configuration

# Key Bindings

| Super | Shift | Alt | Ctrl | Key | Description |
|-------|-------|-----|------|-----|-------------|
| ⌘ | | | | C, V, X, Z, A, F, S | Standard |
| ⌘ | | | | T, W, N, Q | Standard |
| ⌘ | | | | L | URL Bar |
| ⌘ | | | | Space | Spotlight Search |
| ⌘ | | | | Tab | Application Switcher |
| ⌘ | | | | ` | Switch Windows in App |
| ⌘ | ⇧ | | | 4 | Screenshot |
| ⌘ | ⇧ | | | Space | 1Password |
| | | ⌥ | | ← | Move Cursor Left by Word |
| | | ⌥ | | → | Move Cursor Right by Word |
| | | ⌥ | | Backspace | Delete Word |
| | | ⌥ | | Delete | Delete Word Forward |
| | | ⌥ | | Space | Voice |
| | | | ^️ | A | Start of Line |
| | | | ^️ | E | End of Line |
| | | | ^️ | ← | Navigate Workspace Left |
| | | | ^️ | → | Navigate Workspace Right |
| | | | ^️ | ↑ | Mission Control |
| | | | ^️ | ↓ | Application Windows |

## Niri Window Manager Bindings

| Super | Shift | Alt | Ctrl | Key | Description |
|-------|-------|-----|------|-----|-------------|
| ⌘ | | | | T | Open Terminal (ghostty) |
| ⌘ | | | | D | Run Application (fuzzel) |
| ⌘ | | ⌥ | | L | Lock Screen (swaylock) |
| ⌘ | | | | O | Toggle Overview |
| ⌘ | | | | Q | Close Window |
| ⌘ | | | | ←/H | Focus Column Left |
| ⌘ | | | | ↓/J | Focus Window Down |
| ⌘ | | | | ↑/K | Focus Window Up |
| ⌘ | | | | →/L | Focus Column Right |
| ⌘ | | | ^️ | ←/H | Move Column Left |
| ⌘ | | | ^️ | ↓/J | Move Window Down |
| ⌘ | | | ^️ | ↑/K | Move Window Up |
| ⌘ | | | ^️ | →/L | Move Column Right |
| ⌘ | ⇧ | | | ←/H | Focus Monitor Left |
| ⌘ | ⇧ | | | ↓/J | Focus Monitor Down |
| ⌘ | ⇧ | | | ↑/K | Focus Monitor Up |
| ⌘ | ⇧ | | | →/L | Focus Monitor Right |
| ⌘ | ⇧ | | ^️ | ←/H | Move Column to Monitor Left |
| ⌘ | ⇧ | | ^️ | ↓/J | Move Column to Monitor Down |
| ⌘ | ⇧ | | ^️ | ↑/K | Move Column to Monitor Up |
| ⌘ | ⇧ | | ^️ | →/L | Move Column to Monitor Right |
| ⌘ | | | | Page Down/U | Focus Workspace Down |
| ⌘ | | | | Page Up/I | Focus Workspace Up |
| ⌘ | | | ^️ | Page Down/U | Move Column to Workspace Down |
| ⌘ | | | ^️ | Page Up/I | Move Column to Workspace Up |
| ⌘ | ⇧ | | | Page Down/U | Move Workspace Down |
| ⌘ | ⇧ | | | Page Up/I | Move Workspace Up |
| ⌘ | | | | 1-9 | Focus Workspace 1-9 |
| ⌘ | | | ^️ | 1-9 | Move Column to Workspace 1-9 |
| ⌘ | | | | R | Switch Preset Column Width |
| ⌘ | ⇧ | | | R | Switch Preset Window Height |
| ⌘ | | | ^️ | R | Reset Window Height |
| ⌘ | | | | F | Maximize Column |
| ⌘ | ⇧ | | | F | Fullscreen Window |
| ⌘ | | | ^️ | F | Expand Column to Available Width |
| ⌘ | | | | C | Center Column |
| ⌘ | | | ^️ | C | Center Visible Columns |
| ⌘ | | | | - | Decrease Column Width 10% |
| ⌘ | | | | = | Increase Column Width 10% |
| ⌘ | ⇧ | | | - | Decrease Window Height 10% |
| ⌘ | ⇧ | | | = | Increase Window Height 10% |
| ⌘ | | | | V | Toggle Window Floating |
| ⌘ | ⇧ | | | V | Switch Focus Between Floating/Tiling |
| ⌘ | | | | W | Toggle Column Tabbed Display |
| ⌘ | | | | [ | Consume or Expel Window Left |
| ⌘ | | | | ] | Consume or Expel Window Right |
| ⌘ | | | | , | Consume Window into Column |
| ⌘ | | | | . | Expel Window from Column |
| ⌘ | | | | Home | Focus Column First |
| ⌘ | | | | End | Focus Column Last |
| ⌘ | | | ^️ | Home | Move Column to First |
| ⌘ | | | ^️ | End | Move Column to Last |
| ⌘ | ⇧ | | | / | Show Hotkey Overlay |
| ⌘ | ⇧ | | | E | Quit |
| ⌘ | ⇧ | | | P | Power Off Monitors |
| ⌘ | ⇧ | | | 4 | Screenshot Window |
| | | | | Print | Screenshot |
| | | | ^️ | Print | Screenshot Screen |
| | | ⌥ | | Print | Screenshot Window |
| ⌘ | | | | Escape | Toggle Keyboard Shortcuts Inhibit |
| | | | ^️+⌥ | Delete | Quit |

## Zellij Terminal Multiplexer Bindings

### Mode Switching
| Mode | Key | Description |
|------|-----|-------------|
| Any | Ctrl+G | Enter/Exit Locked Mode |
| Normal | Ctrl+P | Enter Pane Mode |
| Normal | Ctrl+T | Enter Tab Mode |
| Normal | Ctrl+N | Enter Resize Mode |
| Normal | Ctrl+H | Enter Move Mode |
| Normal | Ctrl+S | Enter Scroll Mode |
| Normal | Ctrl+O | Enter Session Mode |
| Normal | Ctrl+B | Enter Tmux Mode |
| Any Mode | Enter/Esc | Return to Normal Mode |

### Global Shortcuts (Available in Normal Mode)
| Key | Description |
|-----|-------------|
| Alt+N | New Pane |
| Alt+H/Left | Move Focus or Tab Left (Seamless with Neovim) |
| Alt+J/Down | Move Focus Down (Seamless with Neovim) |
| Alt+K/Up | Move Focus Up (Seamless with Neovim) |
| Alt+L/Right | Move Focus or Tab Right (Seamless with Neovim) |
| Alt+[+/-/=] | Resize Panes |
| Alt+[/] | Previous/Next Swap Layout |
| Alt+F | Toggle Floating Panes |
| Alt+I/O | Move Tab Left/Right |
| Ctrl+Q | Quit |
| Super+K | Clear |

**Note:** Alt+H/J/K/L navigation is seamless between Zellij panes and Neovim splits using the vim-zellij-navigator plugin.

### Pane Mode (Ctrl+P)
| Key | Description |
|-----|-------------|
| H/J/K/L/Arrows | Move Focus |
| N | New Pane |
| D | New Pane Down |
| R | New Pane Right |
| X | Close Pane |
| F | Toggle Fullscreen |
| Z | Toggle Pane Frames |
| W | Toggle Floating Panes |
| E | Toggle Embed/Floating |
| C | Rename Pane |
| P | Switch Focus |
| I | Toggle Pin |

### Tab Mode (Ctrl+T)
| Key | Description |
|-----|-------------|
| H/J/K/L/Arrows | Navigate Tabs |
| 1-9 | Go to Tab Number |
| N | New Tab |
| X | Close Tab |
| R | Rename Tab |
| S | Toggle Sync Tab |
| B | Break Pane to New Tab |
| [/] | Break Pane Left/Right |
| Tab | Toggle Last Tab |

### Resize Mode (Ctrl+N)
| Key | Description |
|-----|-------------|
| H/J/K/L/Arrows | Increase Size |
| Shift+H/J/K/L | Decrease Size |
| +/= | Increase Size |
| - | Decrease Size |

### Move Mode (Ctrl+H)
| Key | Description |
|-----|-------------|
| H/J/K/L/Arrows | Move Pane |
| N/Tab | Move Pane (Next) |
| P | Move Pane Backwards |

### Scroll Mode (Ctrl+S)
| Key | Description |
|-----|-------------|
| J/K/Arrows | Scroll Line |
| D/U | Half Page Down/Up |
| Ctrl+F/B | Page Down/Up |
| PageDown/Up | Page Scroll |
| E | Edit Scrollback |
| S | Enter Search |

### Session Mode (Ctrl+O)
| Key | Description |
|-----|-------------|
| W | Session Manager |
| C | Configuration |
| P | Plugin Manager |
| A | About |
| D | Detach |

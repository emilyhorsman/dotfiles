# NeoVim Configuration Cheat Sheet

## Leader Key
- **Leader**: `<space>` (spacebar)

## File Navigation

### Telescope (Fuzzy Finder)
- `<space>ff` - Find files
- `<space>fg` - Live grep (search in files)
- `<space>fb` - Browse open buffers
- `<space>fh` - Search help tags

### File Explorer (nvim-tree)
- `<space>e` - Toggle file explorer
- `<space>ef` - Find current file in explorer
- `<space>ec` - Collapse all folders

#### Inside nvim-tree:
- `Enter` - Open file/folder
- `a` - Create new file
- `d` - Delete
- `r` - Rename
- `x` - Cut
- `c` - Copy
- `p` - Paste

## Window Management

### Splits
- `<space>v` - Create vertical split
- `<space>h` - Create horizontal split

### Navigation
- `Ctrl+h` - Move to left window
- `Ctrl+j` - Move to lower window
- `Ctrl+k` - Move to upper window
- `Ctrl+l` - Move to right window

Alternative (standard vim):
- `Ctrl+w h/j/k/l` - Navigate between windows

## Git Integration (Diffview)
- `<space>dv` - Open diff view (shows uncommitted changes)
- `<space>dc` - Close diff view
- `<space>dh` - Open file history (git log for entire repo)
- `<space>df` - Open current file history

### Diffview Commands
- `:DiffviewOpen` - View current changes
- `:DiffviewOpen HEAD~1` - Compare with previous commit
- `:DiffviewFileHistory` - Browse commit history
- `:DiffviewRefresh` - Refresh the view

## Theme Switching

### Automatic Theme Switching
- **NeoVim now automatically follows your macOS system appearance!**
- Switches between light (Catppuccin Latte) and dark (Catppuccin Mocha) themes
- Updates within 3 seconds of changing your system appearance
- No manual intervention required

### Manual Theme Commands
```vim
:colorscheme catppuccin-latte      " Light theme
:colorscheme catppuccin-mocha      " Dark theme
:colorscheme catppuccin-frappe     " Medium theme
:colorscheme catppuccin-macchiato  " Medium dark theme
```

## Configuration
- Reload config: `:source ~/.config/nvim/init.lua` or restart NeoVim

## Installed Plugins
- **lazy.nvim** - Plugin manager
- **telescope.nvim** - Fuzzy finder and search
- **nvim-tree** - File explorer
- **catppuccin** - Color scheme with theme variants
- **nvim-web-devicons** - File icons (requires Nerd Font)
- **diffview.nvim** - Git diff and history viewer
- **auto-dark-mode.nvim** - Automatic theme switching based on system appearance

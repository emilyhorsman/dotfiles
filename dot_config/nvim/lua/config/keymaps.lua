-- Smart splits navigation with Alt+hjkl (seamless with Zellij)
vim.keymap.set('n', '<A-h>', require('smart-splits').move_cursor_left, { desc = 'Navigate left (Neovim/Zellij)' })
vim.keymap.set('n', '<A-j>', require('smart-splits').move_cursor_down, { desc = 'Navigate down (Neovim/Zellij)' })
vim.keymap.set('n', '<A-k>', require('smart-splits').move_cursor_up, { desc = 'Navigate up (Neovim/Zellij)' })
vim.keymap.set('n', '<A-l>', require('smart-splits').move_cursor_right, { desc = 'Navigate right (Neovim/Zellij)' })

-- Also map in insert and visual modes
vim.keymap.set('i', '<A-h>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_left() end, { desc = 'Navigate left (Neovim/Zellij)' })
vim.keymap.set('i', '<A-j>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_down() end, { desc = 'Navigate down (Neovim/Zellij)' })
vim.keymap.set('i', '<A-k>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_up() end, { desc = 'Navigate up (Neovim/Zellij)' })
vim.keymap.set('i', '<A-l>', function() vim.cmd('stopinsert'); require('smart-splits').move_cursor_right() end, { desc = 'Navigate right (Neovim/Zellij)' })

vim.keymap.set('v', '<A-h>', require('smart-splits').move_cursor_left, { desc = 'Navigate left (Neovim/Zellij)' })
vim.keymap.set('v', '<A-j>', require('smart-splits').move_cursor_down, { desc = 'Navigate down (Neovim/Zellij)' })
vim.keymap.set('v', '<A-k>', require('smart-splits').move_cursor_up, { desc = 'Navigate up (Neovim/Zellij)' })
vim.keymap.set('v', '<A-l>', require('smart-splits').move_cursor_right, { desc = 'Navigate right (Neovim/Zellij)' })

-- Split windows
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Split window vertically' })
vim.keymap.set('n', '<leader>h', ':split<CR>', { desc = 'Split window horizontally' })

-- Theme switching
vim.keymap.set('n', '<leader>tl', ':colorscheme catppuccin-latte<CR>', { desc = 'Switch to light theme' })
vim.keymap.set('n', '<leader>td', ':colorscheme catppuccin-mocha<CR>', { desc = 'Switch to dark theme' })
vim.keymap.set('n', '<leader>ts', ':ThemeSync<CR>', { desc = 'Sync theme with system' })

-- Diffview
vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>', { desc = 'Open diff view' })
vim.keymap.set('n', '<leader>dc', ':DiffviewClose<CR>', { desc = 'Close diff view' })
vim.keymap.set('n', '<leader>dh', ':DiffviewFileHistory<CR>', { desc = 'Open file history' })
vim.keymap.set('n', '<leader>df', ':DiffviewFileHistory %<CR>', { desc = 'Open current file history' })

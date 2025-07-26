-- Window navigation with cmd+hjkl (only works in GUI NeoVim)
vim.keymap.set('n', '<D-h>', '<C-w>h', { desc = 'Go to left window' })
vim.keymap.set('n', '<D-j>', '<C-w>j', { desc = 'Go to lower window' })
vim.keymap.set('n', '<D-k>', '<C-w>k', { desc = 'Go to upper window' })
vim.keymap.set('n', '<D-l>', '<C-w>l', { desc = 'Go to right window' })

-- Also map in insert mode to switch without leaving insert mode
vim.keymap.set('i', '<D-h>', '<C-\\><C-N><C-w>h', { desc = 'Go to left window' })
vim.keymap.set('i', '<D-j>', '<C-\\><C-N><C-w>j', { desc = 'Go to lower window' })
vim.keymap.set('i', '<D-k>', '<C-\\><C-N><C-w>k', { desc = 'Go to upper window' })
vim.keymap.set('i', '<D-l>', '<C-\\><C-N><C-w>l', { desc = 'Go to right window' })

-- Alternative: Window navigation with ctrl+hjkl (works in terminal)
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Go to left window' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Go to lower window' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Go to upper window' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Go to right window' })

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
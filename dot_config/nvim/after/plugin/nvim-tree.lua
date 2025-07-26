-- nvim-tree keybindings
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
vim.keymap.set('n', '<leader>ef', ':NvimTreeFindFile<CR>', { desc = 'Find current file in explorer' })
vim.keymap.set('n', '<leader>ec', ':NvimTreeCollapse<CR>', { desc = 'Collapse file explorer' })
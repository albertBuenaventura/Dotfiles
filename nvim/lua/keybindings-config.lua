vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap

map('n', '<leader>e', ':NeoTreeFocusToggle<CR>', {noremap = true, silent = false})
map('n', '<leader>ef', ':NeoTreeFocus<CR>', {noremap = true, silent = false})
map('n', '<TAB>', ':BufferLineCycleNext<CR>', {noremap = true, silent = false})
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = false})
map('n', 'lg', ':LazyGit<CR>', {noremap = true, silent = false})

map('i', 'jj', '<ESC>', {noremap = true, silent = false})

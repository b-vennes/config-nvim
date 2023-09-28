local set = vim.opt

set.autoindent = true
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.number = true

local theme = 'light'

set.termguicolors = true
set.background = theme

vim.cmd.colorscheme 'melange'

vim.g.mapleader = ','
vim.opt_global.completeopt = { 'menuone', 'noinsert', 'noselect' }

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.OmniSharp_server_use_net6 = 1

vim.g.rainbow_active = 1

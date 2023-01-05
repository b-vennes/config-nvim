local opts = vim.opt
 
opts.autoindent = true
opts.tabstop = 2
opts.shiftwidth = 2
opts.expandtab = true
opts.number = true

vim.g.mapleader = ","
vim.opt_global.completeopt = { "menuone", "noinsert", "noselect" }

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

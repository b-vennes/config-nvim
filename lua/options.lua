local set = vim.opt

local function configure()
    set.autoindent = true
    -- default tabstop and shiftwidth are 2
    -- add a file to /ftplugin to override this value
    set.tabstop = 2
    set.shiftwidth = 2
    set.expandtab = true
    set.number = true

    set.termguicolors = true
    vim.cmd.colorscheme 'tokyonight'

    vim.g.mapleader = ','
    vim.opt_global.completeopt = { 'menuone', 'noinsert', 'noselect' }

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.g.OmniSharp_server_use_net6 = 1

    vim.g.rainbow_active = 1
end

return {
    configure = configure
}

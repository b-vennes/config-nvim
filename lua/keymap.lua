local function map(keys, command)
    vim.keymap.set('n', keys, command)
end

local function leader(keys)
    return '<leader>' .. keys
end

-- LSP keymaps
local lsp = vim.lsp

local function setKeyMap()
    map('gD', lsp.buf.definition)
    map('K', lsp.buf.hover)
    map('gi', lsp.buf.implementation)
    map('gr', lsp.buf.references)
    map('gds', lsp.buf.document_symbol)
    map('gws', lsp.buf.workspace_symbol)

    map(leader('sh'), lsp.buf.signature_help)
    map(leader('rn'), lsp.buf.rename)
    map(leader('rf'), lsp.buf.format)
    map(leader('ca'), lsp.buf.code_action)
    -- end LSP keymaps

    -- Telescope keymaps
    local telescope = require('telescope')
    telescope.builtin = require('telescope.builtin')

    map('gD', telescope.builtin.lsp_definitions)
    map('gt', telescope.builtin.lsp_type_definitions)
    map('gi', telescope.builtin.lsp_implementations)
    map('gr', telescope.builtin.lsp_references)
    map('gds', telescope.builtin.lsp_document_symbols)
    map('gws', telescope.builtin.lsp_dynamic_workspace_symbols)

    map(leader('ff'), function() telescope.builtin.find_files({ theme = 'dropdown' }) end)
    map(leader('sd'), telescope.extensions.scaladex.scaladex.search)
    map(leader('lc'), telescope.builtin.commands)
    map(leader('lg'), telescope.builtin.live_grep)
    map(leader('mc'), telescope.extensions.metals.commands)
    map(leader('aa'), telescope.builtin.diagnostics)
    map(leader('ae'), function() telescope.builtin.diagnostics({ severity = 'E' }) end)
    map(leader('aw'), function() telescope.builtin.diagnostics({ severity = 'W' }) end)
    -- end Telescope keymaps

    map(leader('fb'), ':Neotree current toggle<CR>')
    map(leader('tn'), ':tabnew<CR>')
    map(leader('tt'), ':tabnext<CR>')
    map(leader('tp'), ':tabprevious<CR>')
    map(leader('tc'), ':tabclose<CR>')
    map(leader('th'), ':noh<CR>')
    map(leader('o'), 'o<ESC>')
    map(leader('O'), 'O<ESC>')
end

return {
    setKeyMap = setKeyMap
}

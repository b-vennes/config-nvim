local function map(keys, command)
    vim.keymap.set('n', keys, command)
end

local function terminal_map(keys, command)
  vim.keymap.set('t', keys, command)
end

local leader_ = '<leader>'

local function leader(keys)
  return leader_ .. keys
end

local function toggle_diagnostics()
  if vim.diagnostic.is_disabled() then
    vim.diagnostic.enable()
  else
    vim.diagnostic.disable()
  end
end

local function setKeyMap()
    local telescope = require('telescope')
    telescope.builtin = require('telescope.builtin')

    map('K', vim.lsp.buf.hover)
    map('gD', telescope.builtin.lsp_definitions)
    map('gt', telescope.builtin.lsp_type_definitions)
    map('gi', telescope.builtin.lsp_implementations)
    map('gr', telescope.builtin.lsp_references)

    map(leader('ff'), function() telescope.builtin.find_files({ theme = 'dropdown' }) end)
    map(leader('sd'), telescope.extensions.scaladex.scaladex.search)
    map(leader('lc'), telescope.builtin.commands)
    map(leader('lg'), telescope.builtin.live_grep)
    map(leader('mc'), telescope.extensions.metals.commands)
    map(leader('aa'), telescope.builtin.diagnostics)
    map(leader('ae'), function() telescope.builtin.diagnostics({ severity = 'E' }) end)
    map(leader('aw'), function() telescope.builtin.diagnostics({ severity = 'W' }) end)
    map(leader('ds'), telescope.builtin.lsp_document_symbols)
    map(leader('ws'), telescope.builtin.lsp_dynamic_workspace_symbols)

    map(leader('fb'), ':Triptych<CR>')
    map(leader('tn'), ':tabnew<CR>')
    map(leader('tt'), ':tabnext<CR>')
    map(leader('tp'), ':tabprevious<CR>')
    map(leader('tc'), ':tabclose<CR>')
    map(leader('th'), ':noh<CR>')
    map(leader('o'), 'o<ESC>')
    map(leader('O'), 'O<ESC>')
    map(leader('pr'), ':Octo pr list<CR>')
    map(leader('br'), ':Octo review start<CR>')
    map(leader('er'), ':Octo review submit<CR>')

    -- toggle diagnostics
    map(leader('dt'), toggle_diagnostics)
    map(leader('de'), vim.diagnostic.enable)

    -- move from terminal mode to normal mode
    terminal_map('<ESC>', [[<C-\><C-N>]])

    -- create terminal tab
    map(leader('cc'), ':tabnew<CR>:terminal<CR>A')

    -- create sbt tab
    map(leader('sbt'), ':tabnew<CR>:terminal sbt<CR>A')

    map(leader_ .. leader_, ':Telescope cmdline<CR>')
end

return {
    setKeyMap = setKeyMap
}

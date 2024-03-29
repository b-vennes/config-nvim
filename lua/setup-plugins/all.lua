local plugins = {
    'alpha',
    'cmp',
    'dash',
    'lsp',
    'lualine',
    'mason',
    'metals',
    'navic',
    'nerd-tree',
    'octo',
    'omnisharp',
    'pets',
    'telescope',
    'treesitter',
    'triptych',
}

local function setupAll()
    for _, plugin in pairs(plugins) do
        require('setup-plugins/setup-' .. plugin)
    end
end

return {
    setupAll = setupAll
}

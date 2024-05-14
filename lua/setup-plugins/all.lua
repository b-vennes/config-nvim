local plugins = {
    'alpha',
    'cmp',
    'dash',
    'lsp',
    'lualine',
    'mason',
    'metals',
    'navic',
    'neo-tree',
    'octo',
    'omnisharp',
    'pets',
    'telescope',
    'treesitter',
}

local function setupAll()
    for _, plugin in pairs(plugins) do
        require('setup-plugins/setup-' .. plugin)
    end
end

return {
    setupAll = setupAll
}

local plugins = {
  'cmp',
  'lsp',
  'lualine',
  'mason',
  'metals',
  'nerd-tree',
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

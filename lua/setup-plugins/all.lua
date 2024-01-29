local plugins = {
  'alpha',
  'cmp',
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
}

return {
  ---Runs plugin setup for all configured setups.
  setup = function()
    for _, plugin in pairs(plugins) do
      require('setup-plugins/setup-' .. plugin)
    end
  end
}

vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    "scalameta/nvim-metals",
    requires = {
      "nvim-lua/plenary.nvim"
    },
  }

  use {
    'nvim-tree/nvim-tree.lua'
  }

  use({
    "hrsh7th/nvim-cmp",
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    },
  })
end)

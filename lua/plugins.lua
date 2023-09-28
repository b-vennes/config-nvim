vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  -- this is required by a couple extensions
  use "nvim-lua/plenary.nvim"

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { 'nvim-lua/popup.nvim' }
  }

  use 'neovim/nvim-lsp'
  use 'neovim/nvim-lspconfig'

  use "williamboman/mason.nvim"

  use "scalameta/nvim-metals"

  use {
    "nvim-telescope/telescope-file-browser.nvim",
    requires = { "nvim-telescope/telescope.nvim" }
  }

  use {
    "hrsh7th/nvim-cmp",
    requires = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-vsnip" },
      { "hrsh7th/vim-vsnip" },
    }
  }

  -- Useful completion sources:
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/vim-vsnip'

  use 'softinio/scaladex.nvim'

  use "savq/melange-nvim"

  use 'Omnisharp/omnisharp-vim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end
  }

  use {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter",
    requires = "nvim-treesitter/nvim-treesitter",
  }

  use 'luochen1990/rainbow'

  use {
    "giusgad/pets.nvim",
    requires = {
      "giusgad/hologram.nvim",
      "MunifTanjim/nui.nvim",
    }
  }

  use 'zbirenbaum/copilot.lua'
  use 'zbirenbaum/copilot-cmp'

  use 'nvim-telescope/telescope-ui-select.nvim'

  use 'rmagatti/goto-preview'

  use 'lukas-reineke/indent-blankline.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    requires = {
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
end)

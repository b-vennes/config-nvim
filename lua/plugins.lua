vim.cmd([[packadd packer.nvim]])

require("packer").startup(function(use)
  use { "wbthomason/packer.nvim", opt = true }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'}, { 'nvim-lua/popup.nvim' } }
  }

  use 'neovim/nvim-lspconfig'

  use "williamboman/mason.nvim"

  use {
    "scalameta/nvim-metals",
    requires = {
      "nvim-lua/plenary.nvim"
    }
  }

  use 'preservim/nerdtree'

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

  use 'arcticicestudio/nord-vim'

  use 'sainnhe/everforest'

  use 'Omnisharp/omnisharp-vim'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end
  }

  use 'luochen1990/rainbow'

  use 'akinsho/toggleterm.nvim'

  use 'HallerPatrick/py_lsp.nvim'

  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function ()
      require"octo".setup()
    end
  }

  use({
    "giusgad/pets.nvim",
    requires = {
      "giusgad/hologram.nvim",
      "MunifTanjim/nui.nvim",
    }
  })

  use 'zbirenbaum/copilot.lua'
  use 'zbirenbaum/copilot-cmp'

end)

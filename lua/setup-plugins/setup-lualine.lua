local navic = require('nvim-navic')

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {'filename'},
    lualine_x = {
      'filetype',
    },
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_c = {
      {
        function()
          return navic.get_location()
        end,
        cond = function()
          return navic.is_available()
        end,
        max_length = vim.o.columns,
        tabs_color = {
          active = 'lualine_{section}_inactive'
        }
      }
    }
  },
  winbar = {
    lualine_a = {
      {
        'tabs',
        mode = 1,
        path = 0,
        use_mode_colors = false,
        show_modified_status = true,
        symbols = {
          modified = '[+]',  -- Text to show when the file is modified.
        },
        max_length = vim.o.columns
      }
    },
  },
  inactive_winbar = {},
  extensions = {}
}

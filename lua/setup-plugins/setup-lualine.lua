local navic = require('nvim-navic')


-- Tab colors are custom for Melange theme.
-- They will need to be changed if the theme changes.
local custom_colors = {
  active_tab_color = {
    fg = "#E49B5D",
    bg = "#34302C",
  },
  inactive_tab_color = {
    fg = "#ECE1D7",
    bg = "#34302C"
  }
}

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
        tabs_color = {
          active = custom_colors.active_tab_color,
          inactive = custom_colors.inactive_tab_color,
        },
      }
    },
    lualine_c = {
      {
        function()
          return navic.get_location()
        end,
        cond = function()
          return navic.is_available()
        end,
      }
    }
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

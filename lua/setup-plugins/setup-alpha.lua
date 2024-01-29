local dashboard = require('alpha.themes.dashboard')
                                                                                       
dashboard.section.header.val = {
  [[          &                ]],
  [[          &&               ]],
  [[           &&              ]],
  [[          &&&              ]],
  [[           &&&             ]],
  [[                           ]],
  [[   ####################    ]],
  [[   #                 #.###.]],
  [[   #      neovim     ##   #]],
  [[   #                 ##   #]],
  [[   #                 #'###']],
  [[     ##            ##      ]],
  [[ ########################  ]],
  [[ ##                    ##  ]],
  [[   ####################    ]],
}


dashboard.leader = ","
dashboard.section.buttons.val = {
  dashboard.button(",fb", " Files", ":Neotree current toggle<CR>"),
  dashboard.button(",ff", "󰥨 Find Files", ":Telescope find_files<CR>"),
  dashboard.button(",lg", "󱎸 Live Grep", ":Telescope live_grep<CR>"),
  dashboard.button(",pr", " Pull Requests", ":Octo pr list<CR>"),
}

require('alpha').setup(dashboard.config)

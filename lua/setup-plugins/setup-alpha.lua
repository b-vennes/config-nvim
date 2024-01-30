local dashboard = require('alpha.themes.dashboard')

dashboard.section.header.val = {
  [[   _&&&***                 ]],
  [[  && &   _______           ]],
  [[    ***&&&&&&&&&&-----_    ]],
  [[         ____  *  &&***    ]],
  [[        &&&&&&&&&&&&&&     ]],
  [[       **   ***            ]],
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
  dashboard.button(",fb", " Files", ":Triptych<CR>"),
  dashboard.button(",ff", "󰥨 Find Files", ":Telescope find_files<CR>"),
  dashboard.button(",lg", "󱎸 Live Grep", ":Telescope live_grep<CR>"),
  dashboard.button(",pr", " Pull Requests", ":Octo pr list<CR>"),
}

require('alpha').setup(dashboard.config)

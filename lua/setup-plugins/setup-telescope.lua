local telescope = require('telescope')

telescope.setup {
  defaults = {
    wrap_results = true,
  }
}

telescope.load_extension('scaladex')
telescope.load_extension('file_browser')
telescope.load_extension("ui-select")


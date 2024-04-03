local telescope = require('telescope')

telescope.setup {
    defaults = {
        wrap_results = true,
        layout_strategy = "vertical",
    },
    extensions = {
        dash = {
            debounce = 10,
            file_type_keywords = {
                scala = { "scala", "scaladoc", "java", "javadoc" }
            }
        }
    }
}

telescope.load_extension('scaladex')
telescope.load_extension('file_browser')
telescope.load_extension("ui-select")
telescope.load_extension("cmdline")
telescope.load_extension("dash")


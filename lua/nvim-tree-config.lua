require("nvim-tree").setup({
  view = {
    adaptive_size = true
  },
  filters = {
    dotfiles = false
  },
  git = {
    ignore = false
  },
  renderer = {
    icons = {
      show = {
        file = false,
        folder = false,
        folder_arrow = false,
        git = false,
        modified = false
      }
    }
  }
})

require("octo").setup({
  use_local_fs = true,
  suppress_missing_scope = {
    project_v2 = true,
  }
})

vim.cmd("hi link @text.diff.add DiffAdd") -- used for octo
vim.cmd("hi link @text.diff.delete DiffDelete") -- used for octo

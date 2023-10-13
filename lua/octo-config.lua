require("octo").setup({
  use_local_fs = true
})

vim.cmd("hi link @text.diff.add DiffAdd") -- used for octo
vim.cmd("hi link @text.diff.delete DiffDelete") -- used for octo

local map = vim.keymap.set

-- LSP mappings
map("n", "gD", function()
  vim.lsp.buf.definition()
end)

map("n", "K", function()
  vim.lsp.buf.hover()
end)

map("n", "gi", function()
  vim.lsp.buf.implementation()
end)

map("n", "gr", function()
  vim.lsp.buf.references()
end)

map("n", "gds", function()
  vim.lsp.buf.document_symbol()
end)

map("n", "gws", function()
  vim.lsp.buf.workspace_symbol()
end)

map("n", "<leader>sh", function()
  vim.lsp.buf.signature_help()
end)

map("n", "<leader>rn", function()
  vim.lsp.buf.rename()
end)

map("n", "<leader>rf", function()
  vim.lsp.buf.formatting()
end)

map("n", "<leader>ca", function()
  vim.lsp.buf.code_action()
end)

-- whatever a worksheet is?
map("n", "<leader>ws", function()
  require("metals").hover_worksheet()
end)

-- previous error/warning
map("n", "[c", function()
  vim.diagnostic.goto_prev({ wrap = false })
end)

-- next error/warning
map("n", "]c", function()
  vim.diagnostic.goto_next({ wrap = false })
end)

-- find file name
map("n", "<leader>ff", function()
  require('telescope.builtin').find_files{theme=dropdown}
end)

-- scaladex
map("n", "<leader>sd", function()
  require('telescope').extensions.scaladex.scaladex.search()
end)

-- commands
map("n", "<leader>lc", function()
  require('telescope.builtin').commands()
end)

-- live search all files
map("n", "<leader>fa", function()
  require('telescope.builtin').live_grep()
end)

-- <f>ile <b>rowser
map('n', '<leader>fb', ':Neotree current toggle<CR>')

-- new tab
map('n', '<leader>tn', ':tabnew<CR>')

-- next tab
map('n', '<leader>tt', ':tabnext<CR>')

-- tab previous
map('n', '<leader>tp', ':tabprevious<CR>')

-- tab close
map('n', '<leader>tc', ':tabclose<CR>')

-- <t>oggle <h>ighlight
map('n', '<leader>th', ':noh<CR>')

-- new line below
map('n', '<leader>o', 'o<ESC>')

-- new line above
map('n', '<leader>O', 'O<ESC>')

map('n', '<leader>ca', function()
  vim.lsp.buf.code_action()
end)

map("n", "<leader>mc", function()
  require"telescope".extensions.metals.commands()
end)

map('n', '<leader>cp', ':Copilot panel<CR>')

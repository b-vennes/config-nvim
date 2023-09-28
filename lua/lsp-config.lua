local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {}
lspconfig.pyright.setup {}
--[[
lspconfig.jdtls.setup {
  root_dir = lspconfig.util.root_pattern("build.sbt"),
}
--]]
lspconfig.rust_analyzer.setup {}
lspconfig.eslint.setup {}

lspconfig.tsserver.setup {}

lspconfig.terraformls.setup {}

-- enable smithy file type
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.smithy" },
  callback = function() vim.cmd("setfiletype smithy") end
})

lspconfig.rust_analyzer.setup {}

lspconfig.smithy_ls.setup {}

lspconfig.nil_ls.setup {}

lspconfig.hls.setup {
  filetypes = { 'haskell', 'lhaskell', 'cabal' },
}

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {}
lspconfig.pyright.setup {}
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

local lsp_signature_setup = {
  on_attach = function(client, bufnr)
    require("lsp_signature").on_attach({
      bind = true, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = {
        border = "rounded"
      }
    }, bufnr)
  end,
}

require("lsp_signature").setup(lsp_signature_setup)

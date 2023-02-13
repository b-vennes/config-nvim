vim.cmd('autocmd VimEnter * NERDTree')
vim.cmd("autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif")

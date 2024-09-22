vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h',{silent = true})
vim.keymap.set({'n', 'x'}, '<leader>ff', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)

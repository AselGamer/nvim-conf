vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('t', '<C-w>h', '<C-\\><C-n><C-w>h',{silent = true})
vim.keymap.set({'n', 'x'}, '<leader>ff', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
vim.keymap.set('n', '<leader>s', [[:%s/<C-r><C-w>//gc<Left><Left><Left>]], { noremap = true, silent = false })

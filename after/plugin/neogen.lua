local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Leader>nf", ":lua require('neogen').generate()<CR>", opts)

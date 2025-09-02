vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.NvimTreeToggle)
vim.keymap.set('t', '<C-w>e', '<C-\\><C-n>',{silent = true})
vim.keymap.set('n', '<leader>s', [[:%s/<C-r><C-w>//gc<Left><Left><Left>]], { noremap = true, silent = false })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, silent = false, buffer = bufnr })
vim.keymap.set('n', '<leader>t', function()
  vim.api.nvim_put({'(' .. os.date('%Y-%m-%d %H:%M:%S') .. ')'}, 'c', true, true)
end, { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>sc', ':!rabbitvcs commit<CR><CR>', { noremap = true, silent = false, buffer = bufnr })
vim.api.nvim_create_user_command('SvnDiff', function()
	vim.cmd('tabnew diffview')
	vim.cmd('r !svn diff')
	vim.bo.filetype = 'diff'
	vim.bo.buftype = 'nofile'
	vim.bo.buflisted = false
	vim.bo.modified = false
end, {})

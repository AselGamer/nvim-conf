require("asel")
vim.wo.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.cmd([[
  autocmd FileType php setlocal autoindent smartindent expandtab shiftwidth=4 tabstop=4
]])

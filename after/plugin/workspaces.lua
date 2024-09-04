local workspaces = require('workspaces');
workspaces.setup();
vim.keymap.set('n', '<leader>pw', workspaces.open);

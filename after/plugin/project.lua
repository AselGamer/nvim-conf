local status_ok, project = pcall(require, "project_nvim")
if not status_ok then
    return
end

project.setup {
    -- detection methods to find project root
    detection_methods = {},
    
    -- patterns used to detect root dir
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
    
    -- show hidden files in telescope
    show_hidden = false,
    
    -- don't automatically change directory
    manual_mode = false,
    
    -- ignore these directories
    ignore_lsp = {},
    
    -- don't show these directories
    exclude_dirs = {},
}

-- Setup telescope integration
local telescope_status_ok, telescope = pcall(require, "telescope")
if not telescope_status_ok then
    return
end

telescope.load_extension('projects')

-- Keybinding to show projects
vim.api.nvim_set_keymap(
    'n',
    '<leader>pw',
    ":lua require'telescope'.extensions.projects.projects{}<CR>",
    { noremap = true, silent = true }
)

-- New keybinding to add current directory as project
vim.api.nvim_set_keymap(
    'n',
    '<leader>pa',
    ":lua require('project_nvim.project').add_project_manually()<CR>",
    { noremap = true, silent = true, desc = "Add current directory as project" }
)

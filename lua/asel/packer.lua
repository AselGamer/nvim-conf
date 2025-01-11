-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim';
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.8',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  };
  use({'morhetz/gruvbox', config = function() vim.cmd.colorscheme('gruvbox') end });
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'});
  use('nvim-treesitter/playground');
  use('mbbill/undotree');
  use('tpope/vim-fugitive');
  use({'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'});
  use({'neovim/nvim-lspconfig'});
  use({'hrsh7th/nvim-cmp'});
  use({'hrsh7th/cmp-nvim-lsp'});
  use({'tpope/vim-surround'});
  use({'wellle/targets.vim'});
  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }
  use {
	  'windwp/nvim-autopairs',
	  event = 'InsertEnter',
	  config = function()
		  require('nvim-autopairs').setup {}
	  end
  };
  use({'windwp/nvim-ts-autotag'});
  use {
	  'nvim-lualine/lualine.nvim',
	  'archibate/lualine-time',
	  'nvim-tree/nvim-web-devicons',
	  'romgrk/barbar.nvim',
	  'lewis6991/gitsigns.nvim',
	  'nvim-tree/nvim-tree.lua',
  };
  use {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup {
		sync_root_with_cwd = true,
		respect_buf_cwd = true,
		update_focused_file = {
			enable = true,
			update_root = true
		 },
      }
    end
  }
  end)

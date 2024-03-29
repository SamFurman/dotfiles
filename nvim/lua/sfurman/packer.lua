vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  --manage packer itself
  use 'wbthomason/packer.nvim'

  -- close brances on enter
  use {'jiangmiao/auto-pairs', as='auto-pairs'}


  -- color scheme
  use {
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end,
  }
  -- fuzzy find files
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- parsing AST
  use {
	  'nvim-treesitter/nvim-treesitter',
	  as = 'treesitter',
	  run = function()
		  vim.cmd(':TSUpdate')
	  end,
  }

  -- navigate between vim and tmux
  use {
      'christoomey/vim-tmux-navigator',
      as = 'vim-tmux-navigator',
  }

  -- display active buffers
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  --interop with git
  use {
	  'tpope/vim-fugitive',
  }

  --lsp zero
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
          },
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},     -- Required
          {'hrsh7th/cmp-nvim-lsp'}, -- Required
          {'L3MON4D3/LuaSnip'},     -- Required
      }
}

end)

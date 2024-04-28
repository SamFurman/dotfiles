require('lazy').setup({
  {
      -- color scheme
	  'rose-pine/neovim',
	  name = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end,
  },
  {
      -- fuzzy find files
	  'nvim-telescope/telescope.nvim', version = '0.1.x',
	  dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  -- matching braces
  'cohama/lexima.vim',
  -- git interop
  'tpope/vim-fugitive',
  {
      -- parsing AST
	  'nvim-treesitter/nvim-treesitter',
	  name = 'treesitter',
	  build = function()
		  vim.cmd(':TSUpdate')
	  end,
  },
  {
      -- navigate between vim and tmux
      'christoomey/vim-tmux-navigator',
      name = 'vim-tmux-navigator',
  },
  -- display active buffers
  {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
  {
      --lsp zero
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  dependencies = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  build = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
          },
          {'williamboman/mason-lspconfig.nvim'}, -- Optional

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},     -- Required
          {'hrsh7th/cmp-nvim-lsp'}, -- Required
          {'L3MON4D3/LuaSnip'},     -- Required
      }
  },
  {
      --chat gpt
      'jackMort/ChatGPT.nvim',
      dependencies = {
          'MunifTanjim/nui.nvim',
          'nvim-lua/plenary.nvim',
          'folke/trouble.nvim',
          'nvim-telescope/telescope.nvim',
      },
      name = 'chatgpt'
  },
  {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      dependencies = { 
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
      },
      name = 'neo-tree'
  },
  {
      'numToStr/Comment.nvim',
      name = 'comment',
      config = function()
          require('Comment').setup()
      end
  }
})

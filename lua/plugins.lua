-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use "rebelot/kanagawa.nvim"
  use "folke/tokyonight.nvim"
  use 'neovim/nvim-lspconfig'
  use 'jose-elias-alvarez/typescript.nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use  'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'saadparwaiz1/cmp_luasnip'
  use 'L3MON4D3/LuaSnip'
  use 'mhartington/formatter.nvim'
  use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      requires = {{ 'nvim-lua/plenary.nvim' }}
  }
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icons
      }
  }
  use 'nvim-treesitter/nvim-treesitter'
  use {
      'numToStr/Comment.nvim',
      config = function()
        require('Comment').setup()
    end
    }
end)

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'gruvbox-community/gruvbox'
  use 'scottmckendry/cyberdream.nvim'
  use "EdenEast/nightfox.nvim"
  use 'tiagovla/tokyodark.nvim'
  use 'gbprod/nord.nvim'

  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  use 'nvim-lua/plenary.nvim'
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'hashivim/vim-terraform'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  use {"ellisonleao/glow.nvim", config = function() require("glow").setup() end}

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    requires = { {'nvim-lua/plenary.nvim'}
  }


}
end)

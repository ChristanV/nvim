vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'gruvbox-community/gruvbox'
  use 'scottmckendry/cyberdream.nvim'
  use "EdenEast/nightfox.nvim"
  use 'tiagovla/tokyodark.nvim'
  use 'gbprod/nord.nvim'
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'hashivim/vim-terraform'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)  


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'gruvbox-community/gruvbox'
  use {
   'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'hashivim/vim-terraform'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)  


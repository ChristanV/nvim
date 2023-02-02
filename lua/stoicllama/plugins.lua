-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'gruvbox-community/gruvbox'
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'hashivim/vim-terraform'

  --  use {
  --  'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
  --config = function() require('gitsigns').setup() end
  --}
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

end)


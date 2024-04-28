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
--  use {
--    'ms-jpq/coq_nvim', branch = 'coq'
--  }
--  use {
--    'ms-jpq/coq.artifacts', branch = 'artifacts'
--  }
--  use {
--    'ms-jpq/coq.thirdparty', branch = '3p'
--  }
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)

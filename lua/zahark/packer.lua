-- ~/.config/nvim/lua/packer.lua
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  -- Telescope
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'},
          {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
      }
  }

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }

end)

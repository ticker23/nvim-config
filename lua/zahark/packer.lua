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

use ({
	"rose-pine/neovim",
	name = "rose-pine",
	config = function()
		vim.cmd("colorscheme rose-pine")
	end
})


-- treesitter

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }





end)

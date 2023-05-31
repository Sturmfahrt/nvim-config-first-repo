local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Everything above each other
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Packer the package manager
  use 'nvim-tree/nvim-tree.lua' -- File Tree
  use 'nvim-tree/nvim-web-devicons' -- Icons for the File Tree
  use 'nvim-lualine/lualine.nvim' -- Nice line things on the bottom
  use 'navarasu/onedark.nvim' -- The theme that is not complete dog shit
  use 'nvim-treesitter/nvim-treesitter' -- Syntax parser plugin
  use {
	  'nvim-telescope/telescope.nvim',
	  tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } -- Fuzzy Finding plugin
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  } -- LSP plugins to get Mason the LSP package manager installed
  use {'neoclide/coc.nvim', branch = 'release'} -- Using CoC becuase trying to do everything natively has been an excercise in fustration.

  if packer_bootstrap then
    require('packer').sync()
  end
end)

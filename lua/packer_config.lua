
--installation de packer.nvim
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then

  print('Installing packer...')
  local packer_url = 'https://github.com/wbthomason/packer.nvim'
  vim.fn.system({'git', 'clone', '--depth', '1', packer_url, install_path})
  print('Done.')
  vim.cmd('packadd packer.nvim')
end

--installation des pluggins
require('packer').startup(function(use)

  use 'wbthomason/packer.nvim' -- package manager
  use 'tpope/vim-surround' --Surrounding ysw)
  use 'vim-airline/vim-airline' --status line for vim
  use 'joshdick/onedark.vim' -- color theme

  -- lsp configuration
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'williamboman/nvim-lsp-installer' -- Configurations for Nvim LSP
  use {'glepnir/lspsaga.nvim', branch = 'main'} -- enhanced lsp uis
  -- autocompetion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/nvim-cmp' -- completion
  use 'hrsh7th/cmp-buffer' -- completion des variable dans le buffer courent
  use 'hrsh7th/cmp-path' -- completion des chemin d'acces
  -- snippets
  use 'L3MON4D3/LuaSnip' -- for autocompletion
  use 'saadparwaiz1/cmp_luasnip' -- for autocompletion
  use 'rafamadriz/friendly-snippets' -- for autocompletion

  use 'preservim/nerdtree' -- folder manager for vim
  use 'ryanoasis/vim-devicons' -- Developer Icons
  -- use 'https://github.com/preservim/tagbar' -- Tagbar for code navigation

end)

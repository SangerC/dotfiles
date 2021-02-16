-- Plugins
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function() 

	use {"wbthomason/packer.nvim", opt = true}

	use 'psliwka/vim-smoothie'

	use 'vim-airline/vim-airline'
	
	use 'vim-airline/vim-airline-themes'

	use 'akinsho/nvim-bufferline.lua'

	use 'lambdalisue/fern.vim'

	use 'kyazdani42/nvim-web-devicons'

	use 'jbyuki/instant.nvim'

	--Files
	
	use 'kyazdani42/nvim-tree.lua'

	use {
  	'nvim-telescope/telescope.nvim',
  	requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
	}

	--Languages
	use 'sheerun/vim-polyglot'

	use 'lervag/vimtex'	

	use 'thiagoalessio/rainbow_levels.vim'

	--Completion

	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/nvim-compe'

	use 'SirVer/ultisnips'

	use 'glepnir/lspsaga.nvim'

	--Themes
	use 'Badacadabra/vim-archery'

	use 'tyrannicaltoucan/vim-deep-space'

	use 'cocopon/iceberg.vim'

	use 'liuchengxu/space-vim-dark'

	use 'cooper-anderson/glowbeam.vim'

	use 'iamcco/markdown-preview.nvim'











end)


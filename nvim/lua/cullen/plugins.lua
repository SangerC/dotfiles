-- Plugins
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function() 

	use {"wbthomason/packer.nvim", opt = true}

	use 'psliwka/vim-smoothie'

	use 'vim-airline/vim-airline'
	
	use 'vim-airline/vim-airline-themes'

	use 'lervag/vimtex'	

	use 'akinsho/nvim-bufferline.lua'


























end)

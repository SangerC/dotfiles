-- Plugins
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function() 

	use {"wbthomason/packer.nvim", opt = true}

	use 'psliwka/vim-smoothie'

	use 'vim-airline/vim-airline'
	
	use 'vim-airline/vim-airline-themes'

	use 'akinsho/nvim-bufferline.lua'

	use 'lambdalisue/fern.vim'
	--Languages
	use 'sheerun/vim-polyglot'

	use 'lervag/vimtex'	
	
	--Themes
	use 'Badacadabra/vim-archery'

	use 'tyrannicaltoucan/vim-deep-space'

	use 'cocopon/iceberg.vim'

	use 'liuchengxu/space-vim-dark'

	use 'cooper-anderson/glowbeam.vim'

	use 'iamcco/markdown-preview.nvim'











end)


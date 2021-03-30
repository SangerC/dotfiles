require("tj.globals")
local opt = vim.opt

-- Plugin {{{
vim.g.airline_powerline_fonts = true

vim.g.airline_theme='deus'

-- }}}

-- General {{{
opt.clipboard = "unnamedplus"

opt.spell = true

opt.splitbelow = true

opt.splitright = true

opt.number = true

opt.relativenumber = true

opt.mouse='a'

opt.laststatus = 2

opt.foldmethod = 'syntax'

opt.scrolloff = 30

opt.cursorline = true

opt.foldcolumn = 1

opt.showmode = false

opt.hidden = true

opt.foldlevel = 1

opt.tabstop = 4

opt.shiftwidth = 4

opt.noexpandtab = true

vim.opt.pumheight = 20

vim.g.netrw_liststyle = 3

-- }}}



vim.cmd('syntax on')

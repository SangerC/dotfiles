-- Cullen LaKemper NVim Config

vim.g.mapleader = ","

local keybinds = require("cullen.keybinds")
keybinds.keybinds()
K = keybinds.map
require("cullen.plugins")
require("cullen.pluginSettings")
require("cullen.settings")





vim.cmd("set termguicolors")
vim.cmd("colorscheme iceberg")
vim.cmd("hi Normal guifg=#c5cbd6")
vim.cmd("hi Preproc guifg=#ae9bc9")

vim.cmd([[
function! SynGroupFull()
    let l:s = synID(line('.'), col('.'), 1)
    return synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfunction
]])



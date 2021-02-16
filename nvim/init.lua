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
vim.cmd("hi Whitespace guifg=#89b8c2")
vim.cmd("hi link LspDiagnosticsVirtualTextError LspDiagErrorBorder")
vim.cmd("hi link LspDiagnosticsVirtualTextHint LspDiagHintBorder")
vim.cmd("hi link LspDiagnosticsVirtualTextWarning LspDiagWarnBorder")
vim.cmd("hi link LspDiagnosticsVirtualTextInformation LspDiagInforBorder")

vim.cmd("hi RainbowLevel0 guibg=#161821")
vim.cmd("hi RainbowLevel1 guibg=#161821")
vim.cmd("hi RainbowLevel2 guibg=#2A2E40")
vim.cmd("hi RainbowLevel3 guibg=#161821")
vim.cmd("hi RainbowLevel4 guibg=#161821")
vim.cmd("hi RainbowLevel5 guibg=#161821")
vim.cmd("hi RainbowLevel6 guibg=#161821")
vim.cmd("hi RainbowLevel7 guibg=#161821")
vim.cmd("hi RainbowLevel8 guibg=#161821")


vim.cmd([[
function! SynGroupFull()
    let l:s = synID(line('.'), col('.'), 1)
    return synIDattr(l:s, 'name') . ' -> ' . synIDattr(synIDtrans(l:s), 'name')
endfunction
]])



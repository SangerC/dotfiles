"Cullen LaKemper NVim Config

"{{{Plugins

call plug#begin(stdpath('data') . '/plugged')




call plug#end()

"}}}

"{{{General Settings
set nocompatible

set spell spelllang=en_us

set number

set relativenumber

syntax enable

set wildmenu

set mouse=a

set foldmethod=syntax

filetype plugin on

set path+=**

"}}}

"{{{Hotkeys
let mapleader = ","

xnoremap <leader>c <esc>:'<,'>:w !xclip -sel clipboard -i <CR> <CR>




"{{{2Commands

command! MakeTags !ctags -R .

"}}}2

"{{{2Snippets

"}}}2

"}}}

"{{{Netrw
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"}}}

"{{{Filetypes

"{{{2 Vim
autocmd FileType vim setlocal foldmethod=marker
"}}}2
"{{{2 Asciidoc


"function! Foldexpr_asciidoc(lnum)
"    let l0 = getline(a:lnum)
"    if l0 =~ '^=\{1,5}\s\+\S.*$'
"        return '>'.matchend(l0, '^=\+')
"   else
"        return '='
"    endif
"endfunc

function! AsciidocLevel()

    if getline(v:lnum) =~ '^== .*$'
        return ">1"
    endif
    if getline(v:lnum) =~ '^=== .*$'
        return ">2"
    endif
    if getline(v:lnum) =~ '^==== .*$'
        return ">3"
    endif
    if getline(v:lnum) =~ '^===== .*$'
        return ">4"
    endif
    if getline(v:lnum) =~ '^====== .*$'
        return ">5"
    endif
    if getline(v:lnum) =~ '^======= .*$'
        return ">6"
    endif
    return "="
endfunction

"autocmd FileType asciidoc setlocal foldexpr=Foldexpr_asciidoc(v:lnum)
autocmd FileType asciidoc setlocal foldexpr=AsciidocLevel()

autocmd FileType asciidoc setlocal foldmethod=expr
"}}}2
"{{{2 Java
autocmd FileType java set foldlevel=1
"}}}2

"}}}

"{{{Color Scheme
hi LineNr ctermfg=092
hi CursorLineNr ctermfg=079




"}}}






















































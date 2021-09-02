##Keybinds

#Leader
map global normal <space> , -docstring "leader"
map global normal <backspace> <space> -docstring 'remove all sels except main'
map global normal <a-backspace> <a-space> -docstring 'remove main sel'

#Doc control
map global normal <c-s> ':write; echo saved<ret>'
map global insert <c-s> '<esc>:write; echo saved<ret>'
map global insert <c-e> <esc>
map global insert <c-c> <esc>

#Buffer 
map global normal <c-j> ':buffer-next<ret>'
map global normal <c-k> ':buffer-previous<ret>'
map -docstring "kill buffer" global user k ':delete-buffer<ret>'
map -docstring "new client" global user n ':new<ret>'

#Tree
map -docstring "kaktree-toggle" global user f ':kaktree-toggle<ret>'

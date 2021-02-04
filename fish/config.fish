
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
source /usr/share/powerline/bindings/fish/powerline-setup.fish
powerline-setup

set PATH "$PATH:$HOME/.gem/ruby/2.7.0/bin"


function cd
    if count $argv > /dev/null
        builtin cd "$argv"; and exa
    else
        builtin cd ~; and exa
    end
end


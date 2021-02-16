
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

function run
    gcc $argv
    ./a.out
end

function ls
    if count $argv > /dev/null
        exa "$argv"
    else
        exa .
    end
end

function vimdate
    cd ~/git/neovim
    git pull
    wait $last_pid
    sudo make CMAKE_BUILD_TYPE=RelWithDebInfo
    wait $last_pid
    sudo make install
end

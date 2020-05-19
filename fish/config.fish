if status is-interactive
and not set -q TMUX
    exec tmux
end
set fish_function_path $fish_function_path "/usr/share/powerline/bindings/fish"
source /usr/share/powerline/bindings/fish/powerline-setup.fish
powerline-setup

set PATH "$PATH:$HOME/.gem/ruby/2.7.0/bin"

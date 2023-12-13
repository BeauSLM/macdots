set fish_greeting

bass source ~/.zshenv

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ;

eval (/opt/homebrew/bin/brew shellenv)

if not status is-interactive
    exit
end

fish_vi_key_bindings
set fish_vi_force_cursor 1
fish_vi_cursor

set fish_color_command green --bold

alias e $VISUAL

alias mkdir 'mkdir -p'

alias ls 'eza'
alias ll 'eza -la --git'
alias lmr 'll  --sort=time --reverse'

alias zigup 'zigup --install-dir ~/thirdparty/zig'

abbr lg 'lazygit'

zoxide init fish | source

fnm env --use-on-cd | source

starship init fish | source


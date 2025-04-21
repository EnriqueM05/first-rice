if status is-interactive
    # Commands to run in interactive sessions can go here
    set -gx PATH $PATH $HOME/scripts

end

function fish_greeting
    #neofetch
end

# Created by `pipx` on 2024-11-05 18:18:28
set PATH $PATH /home/kila/.local/bin

# alias
#alias ls="lsd"
alias ll="lsd -l"
alias py="python"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

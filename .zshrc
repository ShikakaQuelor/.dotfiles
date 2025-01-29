source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zshenv

setopt prompt_subst
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
autoload bashcompinit && bashcompinit
autoload -Uz compinit
compinit

HISTFILE=$HOME/.zhistory
SAVEHIST=10000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey '^w' autosuggest-execute
bindkey '^e' autosuggest-accept
bindkey '^u' autosuggest-toggle
bindkey '^L' vi-forward-word
bindkey '^k' up-line-or-search
bindkey '^j' down-line-or-search

eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# fzf
eval "$(fzf --zsh)"

# eza
alias ls="eza --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"

# Docker
alias dco="docker compose"
alias dps="docker ps"
alias dpa="docker ps -a"
alias dl="docker ps -l -q"
alias dx="docker exec -it"

export EDITOR=/opt/homebrew/bin/nvim

eval "$(rbenv init - zsh)"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_COLLATE=en_US.UTF-8
export CL_CTYPE=en_US.UTF-8
export CL_MESSAGES=en_US.UTF-8
export CL_MONETARY=en_US.UTF-8
export CL_NUMERIC=en_US.UTF-8
export CL_TIME=en_US.UTF-8
export CL_ALL=en_US.UTF-8

alias vim="nvim"
alias dev="cd ~/dev/"
alias conf="cd ~/.config/"
alias l="ls -la"
alias ..="cd .."
alias ...="cd ../.."
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

export PATH="$PATH:$(go env GOPATH)/bin"

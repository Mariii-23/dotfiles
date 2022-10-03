# Created by newuser for 5.8
# .zprofile -> I can change the path of .zshrc

autoload -U colors && colors

export LANG=en_US.UTF-8

#[[ -e ~/.bashrc ]] && emulate sh -c 'source ~/.bashrc'

# Prompt
export PROMPT=" %{$fg[blue]%}%~  %{$reset_color%} "

# ZSH=$HOME/.config/zsh/settings

alias ':q'=exit

export PATH_NITRILE="$PATH_NITRILE:~/nitrile/bin"

# Startship
# https://starship.rs/
# curl -fsSL https://starship.rs/install.sh | bash
eval "$(starship init zsh)"

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory     #Append history to the history file (no overwriting)
setopt sharehistory      #Share history between all sessions.
setopt incappendhistory  #Immediately append to the history file, not just when a term is killed
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source  /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load rbenv automatically by appending
# the following to ~/.zshrc:

eval "$(rbenv init -)"

# hummmmm
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;36m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;35m'

#bindkey '^R' fzf-history
#bindkey '^R' fzf-tmux

export LVIM="/home/mari/.config/lvim:$LVIM"

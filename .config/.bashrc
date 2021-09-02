#
# ~/.bashrc
#
source ~/.config/bash/allAlias.sh
# Update .bashrc ::: source ~/.bashrc
#
alias up='source ~/.bashrc'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

###############
# Bash Prompt #
###############
# Hostname - username - current directory - 
#export PS1="\[\e[36m\]\h\[\e[34m\]@\[\e[36m\]\u\[\e[35m\] \W \[\e[36m\] \[\e[m\] "
export PS1=" \[\e[36m\]\w\[\e[m\] \[\e[36m\] \[\e[m\] "

############
# Neofetch #
############
neofetch

. "$HOME/.cargo/env"
eval "$(starship init bash)"

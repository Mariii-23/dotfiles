########################
### ALIAS
######################
alias s="sxiv"

alias conda_="source /opt/anaconda/bin/activate root"

alias rm="rm -v"
alias cp="cp -v"

#if hash exa &>/dev/null
#then
alias ls='exa'
alias l='exa -lsnew'
alias ll='exa -lsnew -a'
alias lt='ls -t'
alias tree='exa -T'
#else
alias l.='ls -d .* --color=auto'
#    alias ll='ls -l --color=auto'
#    alias ls='ls --color=auto'
#fi

alias grep='grep --color'

alias gcc_="gcc -std=c17 -Wall -Wextra -Wdouble-promotion -Werror=pedantic -Werror=vla -pedantic-errors -Wfatal-errors -Wconversion -Wsign-conversion -g"
alias gcc_99="gcc -std=c99 -Wall -Wextra -Wdouble-promotion -Werror=pedantic -Werror=vla -pedantic-errors -Wfatal-errors -g"
alias gcc_glib='gcc -std=c99 -Wall -Wextra -Wdouble-promotion -Werror=pedantic -Werror=vla -pedantic-errors -Wfatal-errors -g -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -lglib-2.0'

# # Update bash
# alias up='source ~/.bashrc'
# # Update zsh
# alias ups='source ~/.zshrc'
# alias :q='exit'

# Update emacs
alias up_emacs='~/.emacs.d/bin/doom sync'

# nvim
alias v='nvim'

# Config alacritty TMUX
alias va='nvim ~/.config/alacritty/alacrittyTmux.yml'

##########
# OTHERS #
##########

# XAUUU
alias xau.='shutdown now'

# Ate logo
alias ate_logo='systemctl suspend && lock '
# alias ate_logo='systemctl suspend && ( lock_ diamond || lock )'

# alias suspend='systemctl suspend && ( lock_ || lock )'
alias suspend='systemctl suspend && lock '

#Hibernat
alias hibernat='systemctl hibernat && ( lock_ diamond || lock )'

# KEYBOARD
alias tec='setxkbmap pt && setxkbmap -option ctrl:nocaps && xcape -e Control_L=Escape'

# Batery
alias baterry='sudo tlp-stat -b'

# Open Ranger
alias r='ranger'

# pdf latex
alias latexpdf='pdflatex -synctex-1 -interaction-nonstopmode'

# print config
alias print='firefox http://localhost:631/ & disown'


#dotfiles
alias config='nvim ~/.config/i3/config'

##########
# PACMAN #
##########
alias pac='sudo pacman -Sy'

#########
# Christmas Tree
alias christmas='./.config/bash/christmas.sh'
alias natal='./.config/bash/christmas.sh'
alias christmas_='./.config/bash/christmas_.sh'
alias natal_='./.config/bash/christmas_.sh'


# kill spotify
alias killspo='killall spotify'

# alias lock='lock_ || i3lock-fancy'
alias lock='i3lock-fancy'

# Set battery thresholds
alias bash_battery='sudo bash ~/dotfiles/scripts/set_battery_thresholds.sh && sudo bash ~/dotfiles/scripts/set_battery_thresholds.sh'

# cd
alias ..='cd ..'
alias ...='cd ../..'


# ativa o docker
alias start_mysql='docker run --name=mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 -d mysql'

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

PS1="\[$(tput bold)\]\[\033[38;5;1m\][ H1C03 ] \$PWD \$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/')\n-> \\$ \[$(tput sgr0)\]\[$(tput sgr0)\]"

alias sudo='doas'
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pS='doas pacman -S'
alias pSs='pacman -Ss'
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

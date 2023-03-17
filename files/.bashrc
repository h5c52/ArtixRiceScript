#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# alias ls='ls --color=auto'
# alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '

alias sudo='doas'
alias poweroff='doas /sbin/poweroff'
alias reboot='doas /sbin/reboot'
alias pS='doas pacman -S'
alias pSs='pacman -Ss'
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

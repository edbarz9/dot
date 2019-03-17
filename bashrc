#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
set -o vi

export EDITOR="/usr/bin/vim"
export TERM="st-256color"
export GOPATH=$HOME/code/go/gets

export PATH=$PATH:/home/ed/code/script/
#export DBUS_SESSION_BUS_ADDRESS=$(getdbsba)

source $HOME/dot/alias

bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'
bind 'TAB:menu-complete'

HISTSIZE=50000
HISTFILESIZE=100000
shopt -s histappend

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

complete -W "\`grep -oE '^[a-zA-Z0-9_-]+:([^=]|$)' Makefile | sed 's/[^a-zA-Z0-9_-]*$//'\`" make

complete -W "\`ls -R /usr/share/man/ | sed 's/[.].*//' \`" man

#complete -W "commit\ -am push\ origin\ master add status log clone" git

complete -cf sudo

PROMPT_DIRTRIM=3
PS1="\w\\$ "

#
# ~/.bashrc
#
export EDITOR=nano
alias mpc="mpc -f '%artist% - %title% - %file%'"
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#
# ~/.bashrc
#

Red="\[$(tput setaf 204)\]"

Blue="\[$(tput setaf 111)\]"

Green="\[$(tput setaf 46)\]"

Cyan="\[$(tput setaf 140)\]"

Yellow="\[$(tput setaf 11)\]"

RESET="\[$(tput sgr0)\]"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
    alias ls='ls --color=auto'

#PS1="\u@\H[ \W  ]> \[${RESET}\]";
PS1="${Yellow}\u";
PS1+="${Red}@"; 
PS1+="${Yellow}\H"; 
PS1+="${Red}[ "; 
PS1+="${Blue}\W"; 
PS1+=" ${Red}]";
PS1+="${Yellow}>${RESET} ";
export PS1;

#Run neofetch at startup
neofetch
. "$HOME/.cargo/env"

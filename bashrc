#!/usr/bin/bash

alias findf='find . -type f'
alias findd='find . -type d'
alias l='ls -F'
alias ll='ls -al'
alias ls='ls -v'
alias df='df -h'
alias chrm="open -a 'Google Chrome'"
alias lsdr="ls -d -- */"
alias jcon="jupyter console"
alias ll="ls -al"
alias vi="vim"

# Navigation
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# docker shortcuts
alias di="docker images"
alias ds="docker ps"

#------------------------------------------------------------------------------
# Git settings
#------------------------------------------------------------------------------
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
alias go='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gc='git commit'
alias gp='git pull'
alias gk='gitk --all&'
alias gx='gitk --all'
alias gl='git log --decorate'
alias glg='git log --graph --pretty=oneline --abbrev-commit'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gob='git checkout -b'
alias gaa='git add --all'
# git log find by commit message
function glf() { git log --all --grep="$1"; }
function gg() {
    if [ $# -eq 0 ] # number of argument equals to 0
    then
        git branch
    else
        git branch | grep "$@";
    fi
}
export GIT_EDITOR=vim

# complete directory path
complete -d cd

#------------------------------------------------------------------------------
# tmux settings
#------------------------------------------------------------------------------

alias tlist="tmux list-sessions"
alias ta="tmux a -t "

# tmux save session
#SESSION_NAME=""
#tmux has-session -t $SESSION_NAME &> /dev/null
#if [$? != 0]
#  then
#    tmux new-session -s $SESSION_NAME -n script -d
#    tmux send-keys -t $SESSION_NAME "~/bin/script" C-m
#fi
#tmux attach -t $SESSION_NAME

#------------------------------------------------------------------------------
# Django set up
#------------------------------------------------------------------------------

alias djdb="python manage.py dbshell"
alias djss="python manage.py runserver 8000"
alias djm='python manage.py'
#alias pyss='python -m SimpleHTTPServer 8000'

#alias sudo='sudo env PATH=$PATH'

#------------------------------------------------------------------------------
# Cloud computing account
#------------------------------------------------------------------------------

# AWS Acount
source ~/.aws/awscredentials

# The next line updates PATH for the Google Cloud SDK.
#source /Users/cdkkim/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
#source /Users/cdkkim/google-cloud-sdk/completion.bash.inc

#------------------------------------------------------------------------------
# fasd settings
#------------------------------------------------------------------------------
# fasd
eval "$(fasd --init auto)"
alias v='fasd -f -e vim'
alias j='fasd_cd -d'

# postgresql
export PGDATA=/usr/local/var/postgres
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'

# PHPC/lI


#------------------------------------------------------------------------------
# functions
#------------------------------------------------------------------------------
function cdmkdir () { mkdir -p "$@" && eval cd "\"\$$\""; }
function cdd () { cd "$@" && ls; }


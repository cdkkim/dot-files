#!/usr/bin/bash

alias findf='find . -type f'
alias findd='find . -type d'
alias l='ls -F'
alias ll='ls -al'
alias ls='ls -v'
alias df='df -h'
alias subl='sublime'
alias chrm="open -a 'Google Chrome'"
alias lsdr="ls -d -- */"
alias jcon="jupyter console"

# git shortcuts
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
alias go='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gc='git commit'
alias gp='git pull'
alias gk='gitk --all&'
alias gx='gitk --all'
alias gl='git log'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
# git log find by commit message
function glf() { git log --all --grep="$1"; }

# docker shortcuts
alias di="docker images"
alias ds="docker ps"

# tmux short-cuts
alias tlist="tmux list-sessions"
alias ta="tmux a -t "

# Django set up
alias djdb="python manage.py dbshell"
alias djss="python manage.py runserver 8000"
alias djm='python manage.py'
alias pyss='python -m SimpleHTTPServer 8000'

#alias sudo='sudo env PATH=$PATH'

# AWS Acount
source ~/.aws/awscredentials

# fasd
eval "$(fasd --init auto)"
alias v='fasd -f -e vim'
alias j='fasd_cd -d'

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

# postgresql
export PGDATA=/usr/local/var/postgres
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'

# tmux save session
#SESSION_NAME="orhos"
#tmux has-session -t $SESSION_NAME &> /dev/null
#if [$? != 0]
#  then
#    tmux new-session -s $SESSION_NAME -n script -d
#    tmux send-keys -t $SESSION_NAME "~/bin/script" C-m
#fi
#tmux attach -t $SESSION_NAME

#ctags
alias ct="ctags -R -f ./.git/tags ."

# The next line updates PATH for the Google Cloud SDK.
#source $HOME/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
#source $HOME/google-cloud-sdk/completion.bash.inc

#!/usr/bin/env bash

#------------------------------------------------------------------------------
# alias
#------------------------------------------------------------------------------
alias findf='find . -type f'
alias findd='find . -type d'
alias l='ls -F'
alias ls='ls -v'
alias df='df -h'
alias vi='vim'
#alias vim='mvim -v'
alias chrm="open -a 'Google Chrome'"
alias tpls="cd ~/app/utils/scripts"
alias lsdr="ls -d -- */"
alias jcon="jupyter console"
alias pms="cd ~/workspace/prime-main-server"
alias ll="ls -al"

# php shortcuts
alias art="php artisan"
alias tinker="php artisan tinker"
alias unittest="./vendor/bin/phpunit"

# docker shortcuts
alias di="docker images"
alias ds="docker ps"

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

complete -d cd

# git shortcuts
alias gs='echo ""; echo "*********************************************"; echo -e "   DO NOT FORGET TO PULL BEFORE COMMITTING"; echo "*********************************************"; echo ""; git status'
alias ga='git add'
alias gaa='git add --all'
alias go='git checkout'
alias gob='git checkout -b'
alias gb='git branch'
alias gc='git commit'
alias gcm='git commit -m'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all --decorate'
alias gm='git merge --no-ff'
alias gsts='git stash show -p'
# git log find by commit message
function glf() { git log —all —grep="$1"; }
function gg() { git branch | grep $1; }

#------------------------------------------------------------------------------
# tmux settings
#------------------------------------------------------------------------------

alias tlist="tmux list-sessions"
alias ta="tmux a -t "

#SESSION_NAME="orhos"
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
eval "$(fasd --init auto)"
alias v='fasd -f -e vim'
alias j='fasd_cd -d'

# postgresql
export PGDATA=/usr/local/var/postgres
export PGHOST=localhost
alias start-pg='pg_ctl -l $PGDATA/server.log start'
alias stop-pg='pg_ctl stop -m fast'

#------------------------------------------------------------------------------
#ctags
#------------------------------------------------------------------------------

#alias ct="ctags -R -f ./.git/tags ."

#------------------------------------------------------------------------------
# functions
#------------------------------------------------------------------------------
function cdmkdir () { mkdir -p "$@" && eval cd "\"\$$\""; }
function cdd () { cd "$@" && ls; }


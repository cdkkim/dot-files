#!/usr/bin/env bash

alias pyss='python -m SimpleHTTPServer 8000'
alias findf='find . -type f'
alias findd='find . -type d'
alias l='ls -F'
alias ls='ls -v'
alias df='df -h'
alias vi='mvim -v'
alias vim='mvim -v'
alias subl='sublime'
alias chrm="open -a 'Google Chrome'"
alias cax="cd ~/Documents/exercise/crowdanalytix"
alias cdtex="cd /Volumes/sdcard/tex/"
alias sdd="cd /Volumes/sdcard/"
alias ma="cd ~/app/webstats"
alias op="open ."
alias lsdr="ls -d -- */"

# tmux short-cuts
alias tlist="tmux list-sessions"
alias ta="tmux a -t "

# Django set up
alias djdb="python manage.py dbshell"
alias djss="python manage.py runserver 8000"
alias djm='python manage.py'

#alias sudo='sudo env PATH=$PATH'

# The next line updates PATH for the Google Cloud SDK.
#source /Users/cdkkim/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
#source /Users/cdkkim/google-cloud-sdk/completion.bash.inc

# fasd
eval "$(fasd --init auto)"
alias v='fasd -f -e vim'
alias j='fasd_cd -d'

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$\""; }

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

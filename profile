#!/usr/bin/bash

export HOME=/Users/$(whoami)

export CLICOLOR=1
export LSCOLORS=fxExCxDxBxegedabagachx
#export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

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
alias gs='git status'
alias go='git checkout'
alias gb='git branch'
alias gd='git diff'
alias gc='git commit'
alias gp='git pull'
alias gk='gitk --all&'
alias gx='gitk --all'
alias gl='git log --decorate'
alias glh='git log | head'
alias gr1='git rebase -i HEAD^'
alias gr2='git rebase -i HEAD~2'
alias gr3='git rebase -i HEAD~3'
alias glg='git log --graph --pretty=oneline --abbrev-commit'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gob='git checkout -b'
alias gaa='git add --all'
alias gip="git push origin head"
alias gipf="git push origin head --force"

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
function rebase() { git rebase -i HEAD~"$@"; }
export GIT_EDITOR=vim
export GIT_PAGER='less -r' git dc

# kubernetes
#alias k=kubectl
#complete -F __start_kubectl k
#source <(kubectl completion bash)

#------------------------------------------------------------------------------
# fasd settings
#------------------------------------------------------------------------------
# fasd
#eval "$(fasd --init auto)"
#alias v='fasd -f -e vim'
#alias j='fasd_cd -d'

#------------------------------------------------------------------------------
# local settings
#------------------------------------------------------------------------------
source ~/dot-files/functions
#source ~/dot-files/export


#------------------------------------------------------------------------------
# kibana settings
#------------------------------------------------------------------------------
alias tunnel.qa='ssh vroong.elk.qa -N'
alias log.qa='open https://localhost:9500/_plugin/kibana'
alias tunnel.prod='ssh vroong.elk.prod -N'
alias log.prod='open https://localhost:9600/_plugin/kibana'

#------------------------------------------------------------------------------
# functions
#------------------------------------------------------------------------------
function cdmkdir () { mkdir -p "$@" && eval cd "\"\$$\""; }
function cdd () { cd "$@" && ls; }

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

#------------------------------------------------------------------------------
# path settings
#------------------------------------------------------------------------------
export PATH=/opt/homebrew/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Library/Apple/usr/bin
export PATH=/Users/kyeongohkim/Library/Python/3.8/bin:$PATH
export PATH=/Users/kyeongohkim/.gem/ruby/2.6.0/bin:$PATH
export PATH=/Users/kyeongohkim/development/flutter/bin:$PATH

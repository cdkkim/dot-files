#!/usr/bin/bash
export PS1='\[\e[1;30m\]\w\[\e[0m\]\[\e[1;31m\]$(parse_git_branch)\[\e[0m\] \$ '
export HOME=/Users/$(whoami)
export WORKON_HOME="$HOME/.virtualenvs"
export CLICOLOR=1
export LSCOLORS=fxExCxDxBxegedabagachx
#export LSCOLORS=GxFxCxDxBxegedabagaced

shopt -s cdspell # bash enable minor spell correction
shopt -s cmdhist # bash enable history

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

parse_git_branch() { 
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
}

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
source ~/dot-files/path
source ~/dot-files/alias
source ~/dot-files/functions

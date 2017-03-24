#!/usr/bin/env bash

#export PS1='\[\e]0;\w\a\]\n\[\e[0;32m\]\u@\h: \[\e[1;30m\]\w\[\e[0m\]\[\e[1;31m\]$(parse_git_branch)\[\e[0m\]\n\$ '
export PS1='\[\e[1;30m\]\w\[\e[0m\]\[\e[0;32m\]$(parse_git_branch)\[\e[0m\] \$ '
export HOME=/Users/$(whoami)


export CC=clang
export CXX=clang++
export LDFLAGS="-L/usr/local/lib"
export CFLAGS="-I/usr/X11/include -I/usr/X11/include/freetype2"
alias cc="/usr/sfw/bin/gcc"
export LC_ALL=C # forces applications to use the default language for output and sorting to be bytewise
#export CPPFLAGS="-I/usr/local/include -L/usr/local/lib" # https://github.com/andrix/python-snappy

shopt -s cdspell # bash enable minor spell correction
shopt -s cmdhist # bash enable history
# set -o vi

export CLICOLOR=1
export LSCOLORS=fxExCxDxBxegedabagachx
#export LSCOLORS=GxFxCxDxBxegedabagaced

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

source ~/dot-files/functions
#------------------------------------------------------------------------------
# For brew cask available options
# @see. https://github.com/caskroom/homebrew-cask/blob/master/USAGE.md#options
#-------------------------------------------------------------------------------
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#-------------------------------------------------------------------------------
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
#-------------------------------------------------------------------------------

export PATH="$PATH:$HOME/.rvm/bin"

#-------------------------------------------------------------------------------
# Preferred editor for local and remote sessions
#-------------------------------------------------------------------------------

# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

### Added by the Heroku Toolbelt
#export PATH="/usr/local/heroku/bin:$PATH"

# Initialize Virtualenv
#source /usr/local/bin/virtualenvwrapper.sh 

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

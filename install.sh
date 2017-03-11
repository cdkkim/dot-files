#!/bin/sh


# Bash configuration
ln -s ./dot-files/bashrc ~/.bashrc

# Vim configuration
ln -s ./dot-files/vimrc ~/.vimrc
mkdir -p ~/.vim
cp vim/* ~/.vim/
# Install vim plugins
vim +PluginInstall +qall
bash ./install_vim_plugins.sh

# Tmux configuration
ln -s ./dot-files/tmux.conf ~/.tmux.conf

# Export useful functions
export ./dot-files/functions

# Export alias
export ./dot-files/alias


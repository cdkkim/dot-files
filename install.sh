#!/bin/bash
ln -s ~/dot-files/vimrc ~/.vimrc
ln -s ~/dot-files/tmux.conf ~/.tmux.conf
ln -s ~/dot-files/bashrc ~/.bashrc
ln -s ~/dot-files/bash_profile ~/.bash_profile
ln -s ~/dot-files/inputrc ~/.inputrc
ln -s ~/dot-files/ctags ~/.ctags
cp -rf ~/dot-files/vim ~/.vim

export DOTFILES=~/dot-files
files=("$DOTFILES/path" "$DOTFILES/export" "$DOTFILES/aliases" "$DOTFILES/functions" "$DOTFILES/extra");

for file in "${files[@]}"; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

unset files file;

# Install Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install plugins
vim +PluginInstall +qall && python ~/.vim/bundle/YouCompleteMe/install.py

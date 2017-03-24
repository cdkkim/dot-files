#!/bin/bash
ln -s ./dot-files/vimrc ~/.vimrc
ln -s ./dot-files/tmux.conf ~/.tmux.conf
ln -s ./dot-files/bashrc ~/.bashrc
ln -s ./dot-files/bash_profile ~/.bash_profile
ln -s ./dot-files/inputrc ~/.inputrc
cp ./dot-files/vim ~/.vim

export DOTFILES=$HOME/dot-files
files=("$DOTFILES/path" "$DOTFILES/export" "$DOTFILES/aliases" "$DOTFILES/functions" "$DOTFILES/extra");

for file in "${files[@]}"; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

unset files file;

# install Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
# install YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py

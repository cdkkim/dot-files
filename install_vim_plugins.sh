#!/bin/bash

# install YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py

# install command-t (ruby compile)
cd ~/.vim/bundle/command-t
rake make 

cd ~

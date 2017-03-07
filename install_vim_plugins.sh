#!/bin/bash

# install YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py

# install command-t (ruby compile)
# install ruby
cd ~/.vim/bundle/command-t
rake make 

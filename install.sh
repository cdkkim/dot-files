ln -s ./dot-files/vimrc ~/.vimrc
ln -s ./dot-files/tmux.conf ~/.tmux.conf
ln -s ./dot-files/bashrc ~/.bashrc
ln -s ./dot-files/vim ~/.vim

export DOTFILES=$HOME/dot-files
files=("$DOTFILES/.path" "$DOTFILES/.export" "$DOTFILES/.aliases" "$DOTFILES/.functions" "$DOTFILES/.extra");

for file in "${files[@]}"; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

unset files file;

vim +PluginInstall +qall

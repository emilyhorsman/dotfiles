#!/bin/bash

[[ ! -d $HOME/.dotfiles ]] && git clone git@github.com:emilyhorsman/dotfiles.git $HOME/.dotfiles
source $HOME/.dotfiles/link_dot.bash

link_dot_to_home "zshrc" ".zshrc"
link_dot_to_home "vimrc" ".vimrc"
link_dot_to_home "gitconfig" ".gitconfig"

# Download vim plugged
if [[ ! -f $HOME/.vim/autoload/plug.vim ]]
then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Load forked copy of Tomorrow Night.
[[ ! -d $HOME/.dotfiles/tomorrow ]] && git clone git@github.com:emilyhorsman/tomorrow-theme.git $HOME/.dotfiles/tomorrow

mkdir -p $HOME/.vim/colors
link_dot_to_home "tomorrow/vim/colors/Tomorrow-Night.vim" ".vim/colors/Tomorrow-Night.vim"

read -r -p "Would you like to open the Tomorrow Night iTerm color scheme? [y/*] " response
if [[ $response == "y" ]]
then
  open "$HOME/.dotfiles/tomorrow/iTerm2/Tomorrow Night.itermcolors"
fi

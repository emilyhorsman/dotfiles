#!/bin/bash

[[ ! -d $HOME/.dotfiles ]] && git clone git@github.com:emilyhorsman/dotfiles.git $HOME/.dotfiles
[[ ! -d $HOME/.dotfiles/tomorrow ]] && git clone git@github.com:emilyhorsman/tomorrow-theme.git $HOME/.dotfiles/tomorrow
source $HOME/.dotfiles/link_dot.bash

mkdir -p $HOME/.vim/colors
link_dot_to_home "tomorrow/vim/colors/Tomorrow-Night.vim" ".vim/colors/Tomorrow-Night.vim"
link_dot_to_home "zshrc" ".zshrc"

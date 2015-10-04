#!/bin/bash

[[ ! -d $HOME/.dotfiles] && git clone git@github.com:emilyhorsman/dotfiles.git $HOME/.dotfiles
source $HOME/.dotfiles/link_dot.bash
link_dot_to_home "zshrc" ".zshrc"

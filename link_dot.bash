#!/bin/bash

link_dot_to_home() {
  dot_path="$HOME/.dotfiles/$1"
  home_path="$HOME/$2"

  if [ ! -L $home_path ]
  then
    ([ -f $home_path ] || [ -d $home_path ]) && mv $home_path $home_path.predot
    ln -s $dot_path $home_path
  fi
}

unlink_dot() {
  home_path="$HOME/$1"
  if [ -L $home_path ]
  then
    rm -f $home_path
  else
    echo "Not removing $home_path as it is not a symlink."
  fi
}

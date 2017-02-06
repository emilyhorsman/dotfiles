eval (python3 -m virtualfish)
source $HOME/.asdf/asdf.fish
set -U fish_user_paths $fish_user_paths $HOME/.cabal/bin
set -x XDG_CONFIG_HOME $HOME/.config
set -x NVIM_TUI_ENABLE_TRUE_COLOR 1
set -x EDITOR nvim
set -x ANSIBLE_NOCOWS 1

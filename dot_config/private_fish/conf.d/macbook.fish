# Machine-specific configuration for MacBook

# Created by `pipx` on 2025-05-10 02:17:57
set PATH $PATH /Users/emily/.local/bin

pyenv init - fish | source

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
set -gx MAMBA_EXE "/opt/homebrew/opt/micromamba/bin/mamba"
set -gx MAMBA_ROOT_PREFIX "/Users/emily/mamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

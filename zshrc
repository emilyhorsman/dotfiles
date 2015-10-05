# Useful colour chart:
# https://upload.wikimedia.org/wikipedia/en/1/15/Xterm_256color_chart.svg

if [[ -s $HOME/antigen/antigen.zsh ]]
then
  source $HOME/antigen/antigen.zsh
  # This contains helpful things such as forward deletion.
  antigen bundle robbyrussell/oh-my-zsh lib/key-bindings.zsh

  antigen bundle robbyrussell/oh-my-zsh lib/history.zsh
  antigen bundle robbyrussell/oh-my-zsh lib/completion.zsh
  antigen apply
fi

# Ctrl+F to fill in next word from autosuggestion
bindkey '^f' vi-forward-blank-word

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
[[ -s $HOME/.gvm/scripts/gvm ]] && . $HOME/.gvm/scripts/gvm
[[ -s $HOME/.dotfiles/link_dot.bash ]] && . $HOME/.dotfiles/link_dot.bash

[[ -s $HOME/.rvm/bin ]] && export PATH="$PATH:$HOME/.rvm/bin"

# http://superuser.com/questions/49092/how-to-format-the-path-in-a-zsh-prompt
setopt PROMPT_SUBST

# COLORS! http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
autoload -U colors && colors

export ANSIBLE_NOCOWS=1

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats "%F{175}%b%f (%s)"

if [[ $(hostname -s) =~ "vagrant"  && -d /vagrant/www ]]
then
  cd /vagrant/www
  export GIT_OBJECT_THRESHOLD=20000
fi

git_object_count() {
  git count-objects -v | cut -d: -f 2 | paste -sd+ - | bc
}

count_matches() {
  echo $1 | grep $2 | wc -l | sed -e 's/^[ \t]*//'
}

vcs_prompt() {
  git_prompt="${vcs_info_msg_0_}"

  # If we're in a git repo with an object count less than our threshold
  # (checking the status of large repos is too slow).
  : ${GIT_OBJECT_THRESHOLD:=40000}
  if [[ $git_prompt =~ "(git)" ]] && [ $(git_object_count) -le $GIT_OBJECT_THRESHOLD ]
  then
    ss="$(git status --short) " # Space at the end so grep doesn't get nothing

    staged=$(count_matches $ss "^[MDA]")
    [ $staged -ne 0 ] && git_prompt="$git_prompt %F{green}${staged}S%f"

    unstaged=$(count_matches $ss "^.[MD]")
    [ $unstaged -ne 0 ] && git_prompt="$git_prompt %F{red}${unstaged}U%f"

    untracked=$(count_matches $ss "^??")
    [ $untracked -ne 0 ] && git_prompt="$git_prompt %F{blue}$untracked?%f"
  fi

  echo $git_prompt
}

precmd () {
  vcs_info
  PROMPT="%F{62}✿%f %F{243}%n@%m%f:%F{109}%~%f $(vcs_prompt)
%F{blue}%%%f "
}


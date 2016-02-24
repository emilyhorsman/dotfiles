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

export EDITOR=vim

bindkey "^[[3~" delete-char
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

function brew_exists() {
  command -v brew >/dev/null 2>&1
}

# Load brew install of nvm if it exists, then try home directory
export NVM_DIR=$HOME/.nvm
if $(brew_exists) && [[ -s $(brew --prefix nvm)/nvm.sh ]]
then
  source $(brew --prefix nvm)/nvm.sh
elif [[ -s $NVM_DIR/nvm.sh ]]
then
  source $NVM_DIR/nvm.sh
fi

export ANDROID_HOME=/usr/local/opt/android-sdk

[[ -s $HOME/.gvm/scripts/gvm ]] && . $HOME/.gvm/scripts/gvm
[[ -s $HOME/.rvm/scripts/rvm ]] && . $HOME/.rvm/scripts/rvm
[[ -s /usr/local/share/chruby/chruby.sh ]] && . /usr/local/share/chruby/chruby.sh
[[ -s /usr/local/rvm/scripts/rvm ]] && . /usr/local/rvm/scripts/rvm
[[ -s $HOME/.dotfiles/link_dot.bash ]] && . $HOME/.dotfiles/link_dot.bash

export PATH="$HOME/bin:/usr/local/bin:/usr/local/sbin:$PATH"
[[ -s $HOME/.rvm/bin ]] && export PATH="$PATH:$HOME/.rvm/bin"
[[ -s /usr/local/rvm/bin ]] && export PATH="$PATH:/usr/local/rvm/bin"
[[ -s $HOME/.composer/vendor/bin ]] && export PATH="$HOME/.composer/vendor/bin:$PATH"

if command -v virtualenvwrapper.sh >/dev/null 2>&1; then; source virtualenvwrapper.sh; fi

function em() {
  result=$(grep -m 1 "$1" $HOME/.emojicons.txt | cut -f2)
  echo $result
  printf $result | pbcopy
}

# http://superuser.com/questions/49092/how-to-format-the-path-in-a-zsh-prompt
setopt PROMPT_SUBST

# COLORS! http://www.calmar.ws/vim/256-xterm-24bit-rgb-color-chart.html
autoload -U colors && colors

export ANSIBLE_NOCOWS=1

autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' formats "%F{175}%b%f (%s)"

export TERM=screen-256color
export KEYTIMEOUT=1 # 10 ms

alias ta='tmux attach-session -t'

function mp4_to_gif() {
  ffmpeg -i $1 -f gif - | gifsicle --optimize=3 > $2
}

function rdm() {
  sudo launchctl stop homebrew.mxcl.dnsmasq
  sudo launchctl start homebrew.mxcl.dnsmasq
}

if [[ $(hostname -s) =~ "vagrant"  && -d /vagrant/www ]]
then
  cd /vagrant/www
  export DISABLE_VCS_PROMPT=yes
  export GIT_OBJECT_THRESHOLD=20000
fi

git_object_count() {
  git count-objects -v | cut -d: -f 2 | paste -sd+ - | bc
}

count_matches() {
  echo $1 | grep $2 | wc -l | sed -e 's/^[ \t]*//'
}

vcs_prompt() {
  if [[ $DISABLE_VCS_PROMPT == "yes" ]]
  then
    return
  fi

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


test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

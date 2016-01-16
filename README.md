# dotfiles

Hello, and welcome to how I do the computer thing

## Quick Setup

```
PLAYBOOK_PATH=$(mktemp -d)/playbook.yml; curl https://raw.githubusercontent.com/emilyhorsman/dotfiles/master/playbook.yml -o $PLAYBOOK_PATH && ansible-playbook $PLAYBOOK_PATH -i 'localhost,' -c local
```

### (Breakdown)

`PLAYBOOK_PATH=`: define an [environment variable](https://en.wikipedia.org/wiki/Environment_variable) for the rest of the command

`$(mktemp -d)/playbook.yml`: makes a new temporary directory that won't have a conflicting name. Then appends `playbook.yml` on it to form a download path

`curl url -o $PLAYBOOK_PATH`: download the Ansible playbook to the path we conveniently stored in the environment variable

`-i 'localhost,'`: target this computer as the host for Ansible to run the playbook on

`-c local`: use a local connection instead of SSH

## Ansible

Setup is done with an Ansible playbook. This playbook downloads the `dotfiles`
git repo and various dependencies. It then symlinks dotfiles into the correct
places.

Install Ansible [via pip](http://docs.ansible.com/ansible/intro_installation.html#latest-releases-via-pip)

```
$ sudo pip install ansible
```

## tmux Plugin Manager

Use `prefix + I` to fetch plugins and source them.

## Brew Bundle

https://github.com/Homebrew/homebrew-bundle

```
$ brew tap Homebrew/bundle
$ brew bundle
```

## Key Bindings

Possibly the most annoying, unsolved problem in human-computer interaction.

### iTerm

Preferences→Profiles→Keys

* ⌥← `Action: Send Escape Sequence` `[1;3D`
* ⌥→ `Action: Send Escape Sequence` `[1;3C`

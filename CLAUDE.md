IMPORTANT: Always update the relevant README.md file.

# Configuration Management

This repository uses chezmoi to manage dotfiles and configuration files. All configuration files are located in this repo with the following structure:

- Neovim config: `dot_config/nvim/` (becomes `~/.config/nvim/`)
- Shell configs: Fish, starship, etc. are in their respective `dot_config/` directories
- Package lists: `.chezmoidata/packages.yaml` defines packages to install
- Templates: Files ending in `.tmpl` are processed as templates

When looking for configuration files, search within this chezmoi repo rather than in the actual home directory locations.

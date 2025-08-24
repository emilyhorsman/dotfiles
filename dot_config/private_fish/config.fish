if status is-interactive
    starship init fish | source
    mise activate fish | source

    # Custom aliases
    alias l="eza -al -s size -r --icons --git"
    alias cat="bat"
end

# Environment variables
set -Ux EDITOR nvim
set -Ux SYSTEMD_EDITOR nvim

# Add ~/.local/bin to PATH
fish_add_path ~/.local/bin

# Machine-specific configs are loaded from conf.d/

if status is-interactive
    starship init fish | source
    
    # Custom aliases
    alias l="eza -al -s size -r --icons --git"
    alias cat="bat"
end

# Machine-specific configs are loaded from conf.d/

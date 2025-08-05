#!/bin/bash

# Parse niri windows output and display in fuzzel (dmenu mode)
# When a window is selected, focus it

windows=$(niri msg windows | awk '
    /^Window ID [0-9]+/ {
        id = $3
        gsub(/:/, "", id)
    }
    /Title:/ {
        gsub(/^[[:space:]]*Title: "/, "")
        gsub(/"$/, "")
        title = $0
    }
    /App ID:/ {
        gsub(/^[[:space:]]*App ID: "/, "")
        gsub(/"$/, "")
        app = $0
        printf "%s - %s [%s]\n", id, title, app
    }
')

# Use fuzzel in dmenu mode to select a window
selected=$(echo "$windows" | fuzzel --dmenu --lines=20 --prompt="> ")

# Extract the window ID from the selection
if [ -n "$selected" ]; then
    window_id=$(echo "$selected" | cut -d' ' -f1)
    niri msg action focus-window --id="$window_id"
fi
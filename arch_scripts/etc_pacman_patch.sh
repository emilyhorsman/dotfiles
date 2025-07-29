#!/bin/bash

# Script to enable ParallelDownloads = 5 and Color in /etc/pacman.conf
# This script will uncomment the lines if they exist but are commented,
# or add them if they don't exist at all.

set -e

PACMAN_CONF="/etc/pacman.conf"

# Check if running as root
if [[ $EUID -eq 0 ]]; then
    echo "Running as root, proceeding..."
else
    echo "This script needs root privileges to modify /etc/pacman.conf"
    echo "Please run with sudo: sudo $0"
    exit 1
fi

# Backup the original file
BACKUP_FILE="$PACMAN_CONF.backup.$(date +%Y%m%d_%H%M%S)"
cp "$PACMAN_CONF" "$BACKUP_FILE"
echo "Backup created: $BACKUP_FILE"

# Function to handle a configuration option
handle_config_option() {
    local option_name=$1
    local option_line=$2
    
    # Check if the option line exists (commented or uncommented)
    if grep -q "^#*$option_name" "$PACMAN_CONF"; then
        # Line exists, check if it's commented
        if grep -q "^#$option_name" "$PACMAN_CONF"; then
            echo "Found commented $option_name line, uncommenting..."
            sed -i "s/^#$option_name.*/$option_line/" "$PACMAN_CONF"
        else
            echo "$option_name line already exists and is uncommented, updating..."
            sed -i "s/^$option_name.*/$option_line/" "$PACMAN_CONF"
        fi
    else
        # Line doesn't exist, add it after the [options] section
        echo "$option_name line not found, adding it..."
        sed -i "/^\[options\]/a $option_line" "$PACMAN_CONF"
    fi
}

# Handle ParallelDownloads
handle_config_option "ParallelDownloads" "ParallelDownloads = 5"

# Handle Color
handle_config_option "Color" "Color"

echo "Configuration updated in $PACMAN_CONF"
echo "Verifying the changes:"
grep -E "(ParallelDownloads|Color)" "$PACMAN_CONF" || echo "Error: Could not find configuration lines after modification"
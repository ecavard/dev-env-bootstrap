#!/bin/bash

set -e  # Exit immediately if a command fails

DOTFILES_DIR="$HOME/dotfiles"

# Check if SSH access to GitHub is working
if ssh -T git@github.com 2>&1 | grep -q "successfully authenticated"; then
    GIT_URL="git@github.com:ecavard/dotfiles.git"
else
    echo "⚠︎ SSH authentication failed. Falling back to HTTPS."
    GIT_URL="https://github.com/ecavard/dotfiles.git"
fi

# Clone or update dotfiles repository
if [ -d "$DOTFILES_DIR" ]; then
    echo "ⓘ Dotfiles directory already exists. Pulling latest changes..."
    git -C "$DOTFILES_DIR" pull origin main
else
    echo "Cloning dotfiles repository..."
    git clone --recursive "$GIT_URL" "$DOTFILES_DIR"
fi

# Ensure setup script is executable
chmod +x "$DOTFILES_DIR/setup.sh"

# Run setup script
sh "$DOTFILES_DIR/setup.sh"

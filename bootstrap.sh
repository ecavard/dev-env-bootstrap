#!/bin/bash

set -e  # Exit on any error

# Get the absolute path of the script's directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Run each setup script
sh "$SCRIPT_DIR/scripts/basics.sh"
sh "$SCRIPT_DIR/scripts/dotfiles.sh"
sh "$SCRIPT_DIR/scripts/ansible.sh"

echo "✅ Bootstrap completed successfully!"

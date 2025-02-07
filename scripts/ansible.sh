#!/bin/bash

set -e  # Exit on any error

# Ensure the system is up to date
sudo apt update
sudo apt install -y python3 python3-pip python3-venv pipx

# Ensure pipx is properly set up in the user's environment
export PATH="$HOME/.local/bin:$PATH"

# Install Ansible using pipx
pipx install ansible

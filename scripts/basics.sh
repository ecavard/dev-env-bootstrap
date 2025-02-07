#!/bin/bash

set -e  # Exit on any error

# Install basics
sudo apt update
sudo apt install -y \
    build-essential \
    curl \
    file \
    git \
    glances \
    htop \
    stow \
    unzip \
    vim \
    wget \
    zip

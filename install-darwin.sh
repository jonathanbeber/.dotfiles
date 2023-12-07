#!/bin/bash

# Set local .bashrc
grep 'local .bashrc' "${HOME}/.bashrc" || \
    echo 'test -f ~/.dotfiles/.bashrc-darwin && source $_ # local .bashrc' >> ~/.bashrc
# source local .bashrc
source .bashrc

# Code directory
test -d "${HOME}/Code" || mkdir "${HOME}/Code"

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

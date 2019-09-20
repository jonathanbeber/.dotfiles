#!/bin/bash

# Set local .bashrc
grep 'local .bashrc' "${HOME}/.bashrc" || \
    echo 'test -f ~/.dotfiles/.bashrc && source $_ # local .bashrc' >> ~/.bashrc
# source local .bashrc
source .bashrc

# code directory
test -d "${HOME}/Code" || mkdir "${HOME}/Code"

# build essential
sudo apt-get -y install build-essential

# Install tools
bash tools/git/install.sh
bash tools/code/install.sh
bash tools/rust/install.sh
bash tools/terminator/install.sh
bash tools/telegram/install.sh
snap install spotify

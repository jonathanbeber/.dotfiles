#!/bin/bash

source utils.sh

# main package
sudo apt-get -y install git-core

# configs
_ln "$(pwd)/tools/git/.gitconfig" "${HOME}/.gitconfig"

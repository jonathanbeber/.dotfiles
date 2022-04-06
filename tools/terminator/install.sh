#!/bin/bash

source utils.sh

# main package
sudo apt-get -y install terminator

# configs
test -d ~/.config/terminator || mkdir -p $_
_ln "$(pwd)/tools/terminator/config" "${HOME}/.config/terminator/config"

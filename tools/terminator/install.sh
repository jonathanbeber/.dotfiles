#!/bin/bash

source utils.sh

# main package
sudo apt-get -y install terminator

# configs
_ln "$(pwd)/tools/terminator/config" "${HOME}/.config/terminator/config"

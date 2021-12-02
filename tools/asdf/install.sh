#!/bin/bash

source utils.sh

ASDF_VERSION=v0.8.1

test -d ~/.asdf || git clone https://github.com/asdf-vm/asdf.git --branch ${ASDF_VERSION}  $_
cd ~/.asdf
git fetch origin ${ASDF_VERSION}
git checkout ${ASDF_VERSION}
git pull origin ${ASDF_VERSION}
cd -

# part of installation is contained in the .bashrc file

# Config
_ln "$(pwd)/tools/asdf/.tool-versions" "${HOME}/.tool-versions"

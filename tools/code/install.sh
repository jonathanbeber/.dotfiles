#!/bin/bash

source utils.sh

# https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | sudo apt-key add -
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt-get -y update
sudo apt-get -y install codium

# Extensions
codium --install-extension rust-lang.rust
codium --install-extension ms-python.python
codium --install-extension ms-vscode.go

# configs
_ln "$(pwd)/tools/code/settings.json" "${HOME}/.config/VSCodium/User/settings.json"
_ln "$(pwd)/tools/code/keybindings.json" "${HOME}/.config/VSCodium/User/keybindings.json"

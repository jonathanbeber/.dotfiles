#!/bin/bash

source utils.sh

# https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

sudo apt-get -y update
sudo apt-get -y install codium

# Extensions
codium --force --install-extension rust-lang.rust
codium --force --install-extension ms-python.python
codium --force --install-extension ms-vscode.go
pip install proselint
codium --force --install-extension patrykpeszko.vscode-proselint
codium --force --install-extension valentjn.vscode-ltex

# configs
_ln "$(pwd)/tools/code/settings.json" "${HOME}/.config/VSCodium/User/settings.json"
_ln "$(pwd)/tools/code/keybindings.json" "${HOME}/.config/VSCodium/User/keybindings.json"
_ln "$(pwd)/tools/code/product.json" "${HOME}/.config/VSCodium/product.json"

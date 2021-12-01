
#!/bin/bash

source utils.sh

# main package
sudo apt-get -y install i3

# configs
test -d "${HOME}/.config/i3" || mkdir -p $_
_ln "$(pwd)/tools/i3/config" "${HOME}/.config/i3/config"
_ln "$(pwd)/tools/i3/.Xresources" "${HOME}/.Xresources"

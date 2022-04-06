
#!/bin/bash

source utils.sh

# main package
sudo apt-get -y install i3 light redshift

sudo usermod -a -G video $USER
sudo /bin/chgrp video /sys/class/backlight/intel_backlight/brightness
sudo /bin/chmod g+w /sys/class/backlight/intel_backlight/brightness

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/logind-handle-lid-switch -n -t bool -s true

resolution=$(xrandr | grep '*' | awk '{ print $1 }')

# configs
test -d "${HOME}/.config/i3" || mkdir -p $_
_ln "$(pwd)/tools/i3/config" "${HOME}/.config/i3/config"
if [[ ${resolution} == "1920x1080" ]]; then
    _ln "$(pwd)/tools/i3/.Xresources1080p" "${HOME}/.Xresources"
else
    _ln "$(pwd)/tools/i3/.Xresources" "${HOME}/.Xresources"
fi

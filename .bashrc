export PATH="${PATH}:${HOME}/.local/bin/:${HOME}/.cargo/bin"

export PS1='\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 "(%s)")\\$ \[$(tput sgr0)\]'

export GOPATH="${HOME}/Code/go"

alias c="cd ${HOME}/Code"

alias apt="sudo apt-get"

alias tkill="sudo killall -9 Telegram"

alias k=kubectl
hostname | grep -qi zalando && alias k=zkubectl

export PATH="/home/jbeber/Code/go/bin:$PATH"

alias second_monitor="xrandr --output DP-2-3 --auto && xrandr --output eDP-1 --right-of DP-2-3"

setxkbmap -option compose:ralt
xset dpms 300
second_monitor

export HISTSIZE=50000
export HISTFILESIZE=100000
export HISTCONTROL="ignoreboth:erasedups"

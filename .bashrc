export PATH="${PATH}:${HOME}/.local/bin/:${HOME}/.cargo/bin"

export PS1='\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 "(%s)")\\$ \[$(tput sgr0)\]'

export GOPATH="${HOME}/Code/go"

alias c="cd ${HOME}/Code"

alias apt="sudo apt-get"

alias tkill="sudo killall -9 Telegram"

alias k=kubectl
hostname | grep -qi zalando && alias k=zkubectl

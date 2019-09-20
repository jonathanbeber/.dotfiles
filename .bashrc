export PATH="${PATH}:${HOME}/.cargo/bin"
export PS1='\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 "(%s)")\\$ \[$(tput sgr0)\]'
alias c="cd ${HOME}/Code"
alias apt="sudo apt-get"

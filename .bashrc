export PATH="${PATH}:${HOME}/.local/bin/:${HOME}/.cargo/bin:/usr/local/go/bin/"

export PS1='\[\033[38;5;2m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]$(__git_ps1 "(%s)")\\$ \[$(tput sgr0)\]'

export GOPATH="${HOME}/Code/go"

alias c="cd ${HOME}/Code"

alias apt="sudo apt-get"

alias tkill="sudo killall -9 Telegram"

alias k=kubectl
hostname | grep -qi zalando && alias k=zkubectl

export PATH="/home/jbeber/Code/go/bin:$PATH"

setxkbmap -option compose:ralt
xrandr --output DP-0 --auto --right-of DP-2
xrandr --output DP-1 --auto --right-of DP-2
xset dpms 600

export HISTSIZE=50000
export HISTFILESIZE=100000
export HISTCONTROL="ignoreboth:erasedups"

alias gca="git commit --amend"

gf(){
    if [[ $# -eq 3 ]]; then
		ORIGIN=${1}
		shift
	else
		ORIGIN=origin
	fi
	git fetch $ORIGIN ${1}:${2}
}

_kgo(){
	RESOURCE=${1:-pods}
	shift
	NAMESPACE=${1:-kube-system}
	if [[ "${NAMESPACE:0:1}" == "-" ]]; then
		NAMESPACE="kube-system"
	else
		shift
	fi
	k get ${RESOURCE} -n ${NAMESPACE} $@
}

kgd(){
	_kgo deployments $@
}

kgp(){
	_kgo pods $@
}

_kgoi(){
	FUNC=${1:-kgp}
	shift
	RESOURCE=${1:-pods}
	shift
	NAMESPACE=${1:-kube-system}
	if [[ "${NAMESPACE:0:1}" == "-" ]]; then
		NAMESPACE="kube-system"
	fi
	eval ${FUNC} $@ | fzf \
		--preview "kubectl describe ${RESOURCE} -n ${NAMESPACE} {1}" \
		--bind "ctrl-d:execute( \
			kubectl describe ${RESOURCE} -n ${NAMESPACE} {1} | less \
		),ctrl-e:execute( \
			kubectl edit ${RESOURCE} -n ${NAMESPACE} {1} \
		),ctrl-g:execute( \
			kubectl get ${RESOURCE} -o yaml -n ${NAMESPACE} {1} | less \
		)"
}

kgpi(){
	_kgoi kgp pod $@
}

kgdi(){
	_kgoi kgd deploy $@
}

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

source <(kubectl completion bash)

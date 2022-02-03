#!/bin/bash

# Set local .bashrc
grep 'local .bashrc' "${HOME}/.bashrc" || \
    echo 'test -f ~/.dotfiles/.bashrc && source $_ # local .bashrc' >> ~/.bashrc
# source local .bashrc
source .bashrc

# code directory
test -d "${HOME}/Code" || mkdir "${HOME}/Code"
test -d "${HOME}/Code/go" || mkdir "${HOME}/Code/go"

# upgrade
sudo apt update && sudo apt upgrade -y

# essentials
sudo apt-get -y install \
    curl \
    jq \
    python3 \
    python3-pip \
    openjdk-8-jdk \
    build-essential \
    tlp tlp-rdw \
    gnome-tweaks

# Install tools
bash tools/git/install.sh
bash tools/asdf/install.sh
bash tools/code/install.sh
bash tools/tex/install.sh
bash tools/maxima/install.sh
bash tools/i3/install.sh
bash tools/rust/install.sh
bash tools/python/install.sh
bash tools/go/install.sh
bash tools/terminator/install.sh
bash tools/awscli/install.sh
bash tools/gcloud/install.sh
bash tools/docker/install.sh
bash tools/kubectl/install.sh
bash tools/glow/install.sh
bash tools/terraform/install.sh
sudo snap install spotify && sudo snap refresh spotify

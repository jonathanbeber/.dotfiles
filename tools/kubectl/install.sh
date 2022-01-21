#!/bin/bash

asdf plugin add kubectl
asdf install kubectl 1.22.4

# clusterctl
asdf plugin add clusterctl
asdf install clusterctl 1.0.1

# clusterawsadm
asdf plugin-add clusterawsadm https://github.com/vespian/asdf-clusterawsadm.git
asdf install clusterawsadm 1.2.0

# kind
asdf plugin-add kind
asdf install kind 0.11.1

# helm
asdf plugin-add helm
asdf install helm 3.7.2

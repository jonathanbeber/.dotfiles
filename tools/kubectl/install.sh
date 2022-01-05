#!/bin/bash

asdf plugin add kubectl
asdf install kubectl 1.22.4

asdf plugin add clusterctl
asdf install clusterctl 1.0.1

# kind
asdf plugin-add kind
asdf install kind 0.11.1

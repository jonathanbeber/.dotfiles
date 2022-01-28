#!/bin/bash

sudo apt-get -y install docker.io

sudo usermod -aG docker ${USER}

sudo systemctl enable docker

# Compose
asdf plugin-add docker-compose https://github.com/jeebak/asdf-docker-compose.git
asdf install docker-compose 1.29.2

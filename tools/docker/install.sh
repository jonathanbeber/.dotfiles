#!/bin/bash

sudo apt-get -y install docker-ce docker-ce-cli containerd.io

sudo usermod -aG docker ${USER}

sudo systemctl enable docker

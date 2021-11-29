#!/bin/bash

sudo apt-get -y install docker.io

sudo usermod -aG docker ${USER}

sudo systemctl enable docker

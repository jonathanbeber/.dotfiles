#!/bin/bash

sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 1

# pylint
pip3 install pylint

# venv
sudo apt install -y python3-venv

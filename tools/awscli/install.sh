#!/bin/bash

source utils.sh

pip3 install awscli --upgrade --user

# configs
_ln "$(pwd)/tools/awscli/config" "${HOME}/.aws/config"

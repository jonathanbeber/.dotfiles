#!/bin/bash

source utils.sh

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip  -o /tmp/awscliv2.zip -d /tmp/
if which aws; then
    sudo /tmp/aws/install --upgrade
else
    sudo /tmp/aws/install
fi


# configs
test -d "${HOME}/.aws" || mkdir -p $_
_ln "$(pwd)/tools/awscli/config" "${HOME}/.aws/config"

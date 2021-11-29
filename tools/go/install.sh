#!/bin/bash

# go itself
sudo apt-get update
sudo apt-get install golang-go

# gopls
go install golang.org/x/tools/gopls@latest

# required for codium plugin
go install github.com/mdempsky/gocode@latest
go install github.com/uudashr/gopkgs/cmd/gopkgs@latest
go install github.com/ramya-rao-a/go-outline@latest
go install github.com/stamblerre/gocode@latest
go install github.com/rogpeppe/godef@latest
go install github.com/sqs/goreturns@latest
go install golang.org/x/lint/golint@latest

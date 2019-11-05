#!/bin/bash

# go itself
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go

# gopls
go get golang.org/x/tools/gopls@latest

# required for codium plugin
go get github.com/mdempsky/gocode
go get github.com/uudashr/gopkgs/cmd/gopkgs
go get github.com/ramya-rao-a/go-outline
go get github.com/stamblerre/gocode
go get github.com/rogpeppe/godef
go get github.com/sqs/goreturns
go get golang.org/x/lint/golint

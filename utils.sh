#!/bin/bash

_ln() {
    test -f $2 || ln -s $1 $2
}

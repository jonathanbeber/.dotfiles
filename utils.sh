#!/bin/bash

_ln() {
    if [[ -f $2 ]]; then
        if [[ ! -L $2 ]]; then
            mv $2 "${2}.bckp"
            echo "warn: original file moved to ${2}.bckp" 1>&2
        else
            return
        fi
    else
        test -L $2 && rm $2 && echo "warn: broken link found and removed ${2}" 1>&2
    fi
    ln -s $1 $2
}

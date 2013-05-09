#!/bin/sh

cfg="$HOME/.config/mark"
[ -d "$cfg/named" ] || mkdir -p "$cfg/named" 

if [ $# -eq 0 ]; then
    cat "$cfg/default"
elif [ $# -ne 1 ]; then
    echo "Too many arguments." >&2
    exit 1
else
    if [ ! -f "$cfg/named/$1" ]; then
        echo "$1 is not a mark" >&2
        exit 1
    else
        cat "$cfg/named/$1"
    fi
fi

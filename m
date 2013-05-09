#!/bin/sh

cfg="$HOME/.config/mark"
umask 177

[ -d "$cfg/named" ] || mkdir -p "$cfg/named" 

if [ $# -eq 0 ]; then
    echo "USAGE: $0 [MARKNAME] TEXT" >&2
    exit 1
elif [ $# -eq 1 ]; then
    echo "$1" > "$cfg/default"
else
    name="$1"
    shift
    echo "$@" > "$cfg/named/$name"
fi

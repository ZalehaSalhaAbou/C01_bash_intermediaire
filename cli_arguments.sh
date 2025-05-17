#!/bin/bash
# Script qui affiche chaque argument ligne par ligne

if [ "$#" -eq 0 ]; then
    echo "Aucun argument fourni. Utilisation : $0 arg1 arg2 ..."
    exit 1
fi

i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done

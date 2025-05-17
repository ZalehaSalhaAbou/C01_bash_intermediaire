#!/bin/bash
# Script qui affiche chaque argument donné en ligne de commande

if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

i=1
for arg in "$@"; do
    echo "Argument $i: $arg"
    ((i++))
done

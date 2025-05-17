#!/bin/bash
# Affiche chaque argument passé en ligne de commande

i=1
for arg in "$@"
do
    echo "Argument $i : $arg"
    i=$((i + 1))
done

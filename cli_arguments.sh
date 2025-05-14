#!/bin/bash
# Script qui affiche les arguments passés en ligne de commande

# Vérifie si des arguments sont passés
if [ $# -eq 0 ]; then
    echo "Aucun argument fourni."
    exit 1
fi

# Affiche chaque argument sur une ligne
i=1
for arg in "$@"; do
    echo "Argument $i : $arg"
    ((i++))
done

#!/bin/bash
# Script pour rechercher une chaîne dans un fichier

if [ $# -ne 2 ]; then
    echo "Utilisation : $0 fichier chaîne"
    exit 1
fi

fichier=$1
chaine=$2

if [ ! -f "$fichier" ]; then
    echo "Erreur : le fichier '$fichier' n'existe pas."
    exit 1
fi

if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi

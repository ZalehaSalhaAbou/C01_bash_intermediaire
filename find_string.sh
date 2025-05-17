#!/bin/bash
# Script pour chercher une chaîne dans un fichier

read -p "Nom du fichier : " fichier
read -p "Chaîne à rechercher : " chaine

if [ ! -f "$fichier" ]; then
    echo "Erreur : le fichier '$fichier' n'existe pas."
    exit 1
fi

if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi

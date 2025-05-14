#!/bin/bash
# Script pour rechercher une chaîne dans un fichier

echo "Nom du fichier :"
read fichier

echo "Chaîne à rechercher :"
read chaine

# Vérifie si le fichier existe
if [ -f "$fichier" ]; then
    if grep -q "$chaine" "$fichier"; then
        echo "La chaîne '$chaine' a été trouvée dans $fichier."
    else
        echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
    fi
else
    echo "Erreur : Le fichier '$fichier' n'existe pas."
fi

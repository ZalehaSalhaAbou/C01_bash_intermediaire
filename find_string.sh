#!/bin/bash
# Ce script recherche une chaîne dans un fichier

# Demande à l'utilisateur le nom du fichier
read -p "Nom du fichier : " file
# Puis la chaîne à chercher
read -p "Chaîne à rechercher : " string

# Vérifie si le fichier existe
if [ -f "$file" ]; then
    # grep -q ne produit pas de sortie, juste un code retour
    if grep -q "$string" "$file"; then
        echo "La chaîne '$string' a été trouvée dans $file."
    else
        echo "La chaîne '$string' n'a pas été trouvée dans $file."
    fi
else
    echo "Le fichier '$file' n'existe pas."
fi

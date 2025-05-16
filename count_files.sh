#!/bin/bash

# Vérifie si un nom de dossier est passé en argument
if [ -z "$1" ]; then
    echo "Utilisation : $0 nom_dossier"
    exit 1
fi

# Vérifie si le dossier existe
if [ ! -d "$1" ]; then
    echo "Erreur : '$1' n'est pas un dossier valide."
    exit 1
fi

# Compte les fichiers (non-répertoires)
count=$(find "$1" -type f | wc -l)
echo "Le dossier $1 contient $count fichier(s)."

#!/bin/bash
# Script pour compter les fichiers normaux dans un dossier

echo "Entrez le nom du dossier : " read folder

if [ -d "$folder" ]; then
    count=$(find "$folder" -maxdepth 1 -type f | wc -l)
    echo "Le dossier '$folder' contient $count fichier(s)."
else
    echo "Erreur : le dossier '$folder' n'existe pas."
fi

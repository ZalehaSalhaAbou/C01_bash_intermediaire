#!/bin/bash
# Compte le nombre de fichiers dans un dossier

echo "Entrez le nom du dossier :"
read filename

if [ -d "$filename" ]; then
    count=$(ls "$filename" | wc -l)
    echo "Le dossier '$filename' contient $count fichier(s)."
else
    echo "Le dossier '$filename' n'existe pas."
fi

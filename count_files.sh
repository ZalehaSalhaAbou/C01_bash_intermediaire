#!/bin/bash
# Compte le nombre de fichiers dans un dossier

echo "Entrez le nom du dossier :"
read folder

if [ -d "$folder" ]; then
    count=$(ls "$folder" | wc -l)
    echo "Le dossier '$folder' contient $count fichier(s)."
else
    echo "Le dossier '$folder' n'existe pas."
fi
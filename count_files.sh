#!/bin/bash
# Script pour compter le nombre de fichiers dans un répertoire

read -p "Entrez le nom du dossier : " folder

if [ -d "$folder" ]; then
    count=$(ls -p "$folder" | grep -v / | wc -l)
    echo "Le dossier '$folder' contient $count fichier(s)."
else
    echo "Erreur : le dossier '$folder' n'existe pas."
fi

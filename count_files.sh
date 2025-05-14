#!/bin/bash
# Script pour compter le nombre de fichiers dans un répertoire
echo "Entrez le nom du répertoire :"
read repertoire
# Vérifie si le répertoire existe
if [ -d "$repertoire" ]; then
    count=$(ls -p "$repertoire" | grep -v / | wc -l)
    echo "Le dossier $repertoire contient $count fichier(s)."
else
    echo "Erreur : Le répertoire '$repertoire' n'existe pas."
fi

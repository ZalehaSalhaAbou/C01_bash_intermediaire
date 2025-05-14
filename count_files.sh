#!/bin/bash
# Ce script compte le nombre de fichiers dans un répertoire donné

# Demande à l'utilisateur de saisir le nom du dossier
read -p "Nom du dossier : " folder

# Vérifie si le dossier existe
if [ -d "$folder" ]; then
    # Compte le nombre de fichiers (pas de dossiers) uniquement
    count=$(find "$folder" -type f | wc -l)
    echo "Le dossier $folder contient $count fichier(s)."
else
    echo "Le dossier '$folder' n'existe pas."
fi

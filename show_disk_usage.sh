#!/bin/bash
# Script pour afficher l'utilisation du disque

echo "Entrez le nom d'un dossier à analyser :"
read dossier

# Vérifie si le dossier existe
if [ -d "$dossier" ]; then
    echo "Utilisation du disque pour le dossier $dossier :"
    du -sh "$dossier"
else
    echo "Erreur : Le dossier '$dossier' n'existe pas."
fi

echo "Utilisation globale du disque :"
df -h

#!/bin/bash
# Script pour afficher l'utilisation du disque

echo "Utilisation globale du disque :"
df -h

echo
read -p "Souhaitez-vous voir l'espace utilisé par un dossier ? (o/n) : " rep

if [ "$rep" = "o" ]; then
    read -p "Entrez le chemin du dossier : " dossier
    if [ -d "$dossier" ]; then
        du -sh "$dossier"
    else
        echo "Erreur : dossier non trouvé."
    fi
fi

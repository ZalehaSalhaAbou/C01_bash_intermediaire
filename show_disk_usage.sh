#!/bin/bash
# Affiche l'utilisation du disquedisque
echo "Résumé de l'utilisation du disque (toutes les partitions) :"
df -h

echo ""
read -p "Voulez-vous voir l'utilisation détaillée d'un dossier spécifique ? (o/n) : " rep

if [[ "$rep" =~ ^[oOyY]$ ]]; then
  read -p "Entrez le chemin du dossier : " dossier
  if [ ! -d "$dossier" ]; then
    echo "Erreur : $dossier n'est pas un dossier."
    exit 2
  fi
  du -sh "$dossier"
fi

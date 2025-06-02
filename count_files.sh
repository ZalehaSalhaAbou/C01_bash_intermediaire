#!/bin/bash
# Compte le nombre de fichiers dans un dossier
if [ $# -ne 1 ]; then
  echo "Usage : $0 <nom_du_dossier>"
  exit 1
fi

DIR="$1"

if [ ! -d "$DIR" ]; then
  echo "Erreur : $DIR n'est pas un répertoire existant."
  exit 2
fi

NB_FILES=$(find "$DIR" -type f | wc -l)
echo "Le dossier $DIR contient $NB_FILES fichier(s)."

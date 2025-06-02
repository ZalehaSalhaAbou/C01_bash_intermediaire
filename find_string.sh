#!/bin/bash
# Cherche une chaîne dans un fichier
if [ $# -ne 2 ]; then
  echo "Usage : $0 <fichier> <chaine>"
  exit 1
fi

FICHIER="$1"
CHAINE="$2"

if [ ! -f "$FICHIER" ]; then
  echo "Erreur : Le fichier $FICHIER n'existe pas."
  exit 2
fi

if grep -q -- "$CHAINE" "$FICHIER"; then
  echo "La chaîne '$CHAINE' a été trouvée dans $FICHIER."
else
  echo "La chaîne '$CHAINE' n'a pas été trouvée dans $FICHIER."
fi

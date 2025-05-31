#!/bin/bash
# Cherche une chaîne dans un fichier

echo "Entrez le nom du fichier :"
read fichier

echo "Entrez la chaîne à chercher :"
read chaine

if grep -q "$chaine" "$fichier"; then
    echo "La chaîne '$chaine' a été trouvée dans $fichier."
else
    echo "La chaîne '$chaine' n'a pas été trouvée dans $fichier."
fi
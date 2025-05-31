#!/bin/bash
# Calcule une opération simple

echo "Entrez le premier nombre :"
read a

echo "Entrez le deuxième nombre :"
read b

echo "Entrez l’opérateur (+, -, *, /) :"
read op

if [ "$op" = "+" ]; then
    echo "Résultat : $((a + b))"
elif [ "$op" = "-" ]; then
    echo "Résultat : $((a - b))"
elif [ "$op" = "*" ]; then
    echo "Résultat : $((a * b))"
elif [ "$op" = "/" ]; then
    if [ "$b" -eq 0 ]; then
        echo "Erreur : division par zéro"
    else
        echo "Résultat : $((a / b))"
    fi
else
    echo "Opérateur non reconnu"
fi
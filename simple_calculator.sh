#!/bin/bash
# Script calculatrice simple : prend deux nombres et un opérateur

if [ $# -ne 3 ]; then
    echo "Usage : $0 nombre1 nombre2 opérateur(+ - * /)"
    exit 1
fi

a=$1
b=$2
op=$3

# Vérifie que a et b sont des entiers
if ! [[ "$a" =~ ^[0-9]+$ && "$b" =~ ^[0-9]+$ ]]; then
    echo "Erreur : les deux premiers arguments doivent être des nombres entiers."
    exit 1
fi

case $op in
    +)
        echo "Résultat : $((a + b))"
        ;;
    -)
        echo "Résultat : $((a - b))"
        ;;
    \*)
        echo "Résultat : $((a * b))"
        ;;
    /)
        if [ "$b" -eq 0 ]; then
            echo "Erreur : division par zéro."
        else
            echo "Résultat : $((a / b))"
        fi
        ;;
    *)
        echo "Erreur : opérateur invalide. Utilisez +, -, *, ou /"
        ;;
esac

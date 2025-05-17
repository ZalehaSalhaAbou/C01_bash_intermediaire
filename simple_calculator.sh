#!/bin/bash
# Script de calcul simple avec deux nombres et un opérateur

if [ $# -ne 3 ]; then
    echo "Utilisation : $0 nombre1 nombre2 opérateur"
    echo "Ex : $0 5 3 +"
    exit 1
fi

a=$1
b=$2
op=$3

# Vérifier que a et b sont bien des nombres
if ! [[ "$a" =~ ^[0-9]+$ ]] || ! [[ "$b" =~ ^[0-9]+$ ]]; then
    echo "Erreur : les deux premiers arguments doivent être des nombres entiers."
    exit 1
fi

case $op in
    +) res=$((a + b)) ;;
    -) res=$((a - b)) ;;
    \*) res=$((a * b)) ;;
    /)
        if [ "$b" -eq 0 ]; then
            echo "Erreur : division par zéro"
            exit 1
        fi
        res=$((a / b))
        ;;
    *)
        echo "Opérateur invalide. Utilisez +, -, * ou /"
        exit 1
        ;;
esac

echo "Résultat : $res"

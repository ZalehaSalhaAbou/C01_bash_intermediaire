#!/bin/bash
# Ce script effectue une opération arithmétique simple

# Demande les entrées à l'utilisateur
read -p "Entrez le premier nombre : " a
read -p "Entrez le deuxième nombre : " b
read -p "Entrez l'opérateur (+, -, *, /) : " op

# Vérifie que les deux entrées sont des nombres
if ! [[ "$a" =~ ^-?[0-9]+([.][0-9]+)?$ && "$b" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
    echo "Veuillez entrer des nombres valides."
    exit 1
fi

# Effectue l'opération
case "$op" in
    +)
        result=$(echo "$a + $b" | bc)
        ;;
    -)
        result=$(echo "$a - $b" | bc)
        ;;
    "*")
        result=$(echo "$a * $b" | bc)
        ;;
    /)
        if [ "$b" == "0" ]; then
            echo "Division par zéro interdite."
            exit 1
        fi
        result=$(echo "scale=2; $a / $b" | bc)
        ;;
    *)
        echo "Opérateur invalide. Utilisez +, -, * ou /"
        exit 1
        ;;
esac

echo "Résultat : $result"

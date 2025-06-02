#!/bin/bash
# Calcule une opération simple

if [ $# -ne 3 ]; then
  echo "Usage : $0 <nombre1> <nombre2> <opérateur>"
  echo "Exemple : $0 5 3 +"
  exit 1
fi

N1="$1"
N2="$2"
OP="$3"

# Vérifier si N1 et N2 sont bien des nombres
if ! [[ "$N1" =~ ^-?[0-9]+([.][0-9]+)?$ && "$N2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
  echo "Erreur : Les deux premiers arguments doivent être des nombres."
  exit 2
fi

# Exécuter l'opération
case "$OP" in
  +) RES=$(echo "$N1 + $N2" | bc) ;;
  -) RES=$(echo "$N1 - $N2" | bc) ;;
  '*') RES=$(echo "$N1 * $N2" | bc) ;;
  /)
    if [ "$N2" == "0" ]; then
      echo "Erreur : Division par zéro."
      exit 3
    fi
    RES=$(echo "scale=2; $N1 / $N2" | bc)
    ;;
  *)
    echo "Erreur : Opérateur non reconnu. Utilisez +, -, *, /"
    exit 4
    ;;
esac

echo "Résultat : $RES"

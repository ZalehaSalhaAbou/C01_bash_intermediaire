#!/bin/bash
# Affiche chaque argument passé en ligne de commande
if [ $# -eq 0 ]; then
  echo "Utilisation : $0 <arg1> <arg2> ..."
  exit 1
fi

i=1
for arg in "$@"; do
  echo "Argument $i: $arg"
  i=$((i+1))
done

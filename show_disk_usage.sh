#!/bin/bash
# Ce script affiche l'utilisation du disque

echo "Utilisation globale du disque :"
df -h

echo
echo "Utilisation détaillée dans le dossier courant :"
du -sh ./* 2>/dev/null

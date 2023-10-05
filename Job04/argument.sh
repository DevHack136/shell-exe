#!/bin/bash

# Vérification du nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <contenu> <nouveauFichier>"
    exit 1
fi

contenu="$1"
nouveauFichier="$2"

cat "$1" > "$2"
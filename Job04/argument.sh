#!/bin/bash

# Vérification du nombre d'arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <contenu> <nouveauFichier>"
    exit 1
fi

contenu="$1"
nouveauFichier="$2"

# Vérification de l'existence du fichier source
if [ ! -f "$contenu" ]; then
    echo "Le fichier '$contenu' n'existe pas."
    exit 1
fi

# Copie du contenu du fichier source vers le fichier cible
cat "$contenu" > "$nouveauFichier"
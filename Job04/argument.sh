#!/bin/bash

# Vérification du nombre d'arguments
# Si le nombre d'arguments n'est pas égal à 2, affiche un message d'utilisation et quitte avec le code d'erreur 1.
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <contenu> <nouveauFichier>"
    exit 1
fi

# Stocke les deux arguments passés au script dans des variables.
contenu="$1"
nouveauFichier="$2"

# Copie du contenu du fichier source vers le fichier cible
# Utilise la commande "cat" pour lire le contenu du fichier spécifié par la variable "contenu" et le redirige vers le fichier spécifié par la variable "nouveauFichier".
cat "$contenu" > "$nouveauFichier"  
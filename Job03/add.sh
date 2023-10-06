#!/bin/bash

# Vérification du nombre d'arguments
if [ "$#" -ne 2 ]; then
    # Si le nombre d'arguments n'est pas égal à 2, affiche un message d'utilisation et quitte avec le code d'erreur 1.
    echo "Usage: $0 <nombre1> <nombre2>"
    exit 1
fi

# Stocke les deux arguments passés au script dans des variables.
nombre1="$1"
nombre2="$2"

# Effectue l'addition des deux nombres et stocke le résultat dans la variable "resultat".
resultat=$((nombre1 + nombre2))

# Affiche le résultat de l'addition.
echo "Result : $resultat"
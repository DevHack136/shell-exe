#!/bin/bash

# Vérification du nombre d'arguments
if [ "$#" -ne 3 ]; then
    # Si le nombre d'arguments n'est pas égal à 3, affiche un message d'utilisation et quitte le script avec le code d'erreur 1.
    echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
    exit 1
fi

nombre1="$1"
operateur="$2"
nombre2="$3"

# Remplacer "x" par "*" pour la multiplication
if [ "$operateur" == "x" ]; then
    # Si l'opérateur est "x" (utilisé pour la multiplication), le remplace par "*".
    operateur="*"
fi

# Vérification de l'opérateur et exécution de l'opération correspondante
case "$operateur" in
    +)
        # Si l'opérateur est "+", effectue une addition.
        resultat=$(($nombre1 + $nombre2))
        ;;
    -)
        # Si l'opérateur est "-", effectue une soustraction.
        resultat=$(($nombre1 - $nombre2))
        ;;
    \*)
        # Si l'opérateur est "*", effectue une multiplication.
        resultat=$(($nombre1 * $nombre2))
        ;;
    /)
        # Si l'opérateur est "/", effectue une division.
        if [ "$nombre2" -eq 0 ]; then
            # Vérifie si le nombre2 est égal à 0 pour éviter une division par zéro.
            echo "Division par zéro impossible."
            exit 1
        fi
        resultat=$(awk "BEGIN {printf \"%.2f\", $nombre1 / $nombre2}")
        ;;
    *)
        # Si l'opérateur n'est aucun des cas précédents, affiche un message d'utilisation et quitte le script avec le code d'erreur 1.
        echo "Opérateur invalide. Utilisation : $0 <nombre1> [x|+|-|/] <nombre2>"
        exit 1
        ;;
esac

echo "Résultat de l'opération : $resultat"
# Affiche le résultat de l'opération mathématique.
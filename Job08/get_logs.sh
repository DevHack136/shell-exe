#!/bin/bash

# Utilisateur cible
target_user="__devhack__"

# Vérifier si l'utilisateur cible est connecté
if who | grep -q "$target_user"; then
    # Compter les connexions
    connection_count=$(who | grep -c "$target_user")

    # Date au format jj-mm-aaaa-HH:MM
    current_date="$(date +'%d-%m-%Y-%H-%M')"

    # Créer le fichier avec le nombre de connexions
    filename="$connection_count-$current_date"
    echo "$connection_count" >"$filename"
    mkdir -p Backup

    # Créer une archive tar
    tar -cvf "Backup/$filename.tar" "$filename"

    # Supprimer le fichier original
    rm "$filename"
    echo "Tout est bon."
else
    echo "L'utilisateur $target_user n'est pas connecté."
fi

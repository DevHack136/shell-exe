#!/bin/bash

# Obtient la date et l'heure actuelles au format "jour-mois-année-heure:minute" et les stocke dans la variable Ctime.
Ctime=$(date +"%d-%m-%Y-%H:%M")

# Enregistre le nombre de connexions dans un fichier nommé "number_connection-$Ctime".
echo $(last $1 | grep "$1" | wc -l) > "number_connection-$Ctime"

# Crée une archive TAR avec l'option "-c" pour créer une nouvelle archive et "-f" pour spécifier le nom de l'archive.
# Le nom de l'archive est basé sur la variable Ctime et est stocké dans le répertoire "Backup".
# L'archive contient le fichier "number_connection-$Ctime".
tar "-cf" "Backup/$Ctime.tar" "number_connection-$Ctime"

# Supprime le fichier "number_connection-$Ctime" car il a été inclus dans l'archive TAR.
rm "number_connection-$Ctime"
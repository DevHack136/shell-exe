#!/bin/bash

# Emplacement du fichier CSV (dans le même dossier que le script)
csv_file="Shell_Userlist.csv"

# Parcours du fichier CSV
while IFS=',' read -r id prenom nom mdp role; do
    # La boucle lit chaque ligne du fichier CSV en utilisant ',' comme délimiteur.

    # Créer un utilisateur avec le nom d'utilisateur du CSV
    sudo useradd -m -s /bin/bash -c "$prenom $nom" "$prenom$nom"
    # Crée un nouvel utilisateur avec le nom d'utilisateur généré à partir du prénom et du nom du CSV.
    # -m : Crée un répertoire personnel pour l'utilisateur.
    # -s /bin/bash : Définit le shell par défaut de l'utilisateur sur Bash.
    # -c "$prenom $nom" : Ajoute un commentaire avec le prénom et le nom de l'utilisateur.
    
    # Définir le mot de passe pour l'utilisateur
    echo "$prenom$nom:$mdp" | sudo chpasswd
    # Utilise la commande "chpasswd" pour définir le mot de passe de l'utilisateur.
    # Le mot de passe est extrait du CSV.

    # Vérifier le rôle pour attribuer des privilèges
    if [ "$role" = "Admin" ]; then
        sudo usermod -aG sudo "$prenom$nom"
        # Si le rôle est "Admin", ajoute l'utilisateur au groupe "sudo" pour lui accorder des privilèges de superutilisateur.
        echo "Utilisateur $prenom $nom créé avec des privilèges de superutilisateur."
    else
        echo "Utilisateur $prenom $nom créé en tant qu'utilisateur standard."
        # Si le rôle n'est pas "Admin", l'utilisateur est créé en tant qu'utilisateur standard.
    fi
    
done <"$csv_file"
# Termine la boucle en spécifiant le fichier CSV comme source d'entrée.
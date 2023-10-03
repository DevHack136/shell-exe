# Shell-exe : Le monde des scripts Shell

Pour faire un bon film, vous avez besoin de trois choses : le script, le script et le script.

## The Bourne Again Shell (BASH)

BASH (Bourne-Again SHell) est un interpréteur de commandes en ligne de texte utilisé principalement dans les systèmes d'exploitation de type UNIX et Linux. Il permet aux utilisateurs d'interagir avec le système d'exploitation en entrant des commandes textuelles. BASH est l'une des nombreuses variantes du shell Bourne, qui a été initialement développé par Stephen Bourne.

Considérez BASH comme un langage de programmation conçu pour communiquer avec votre ordinateur. Au lieu d'utiliser la souris pour cliquer, vous employez des mots et des commandes pour donner des instructions à votre ordinateur. Les scripts BASH sont comparables à des listes d'instructions destinées à l'ordinateur. C'est un peu comme si vous disiez : "Faites ceci, ensuite faites cela, et voilà le résultat !" Ces scripts se révèlent extrêmement utiles pour automatiser des tâches fastidieuses ou pour mettre en place des actions automatiques sur votre ordinateur.

## Tâches à accomplir

### Job 01 - Premier pas dans le monde des scripts

- Créez un fichier nommé `myfirstscript.sh`.
- Écrivez à l'intérieur votre premier script : `echo "I'm a script"`.
- Donnez les droits d'exécution au fichier.
- Exécutez le script.

### Job 02 - Mise à jour du gestionnaire de paquets

- Réalisez un script nommé `myupdate.sh` pour mettre à jour votre gestionnaire de paquets.

### Job 03 - Addition avec des paramètres

- Créez un script nommé `add.sh` qui permet d'additionner 2 nombres passés en argument.

### Job 04 - Copie de contenu avec redirections

- Créez un script nommé `argument.sh` qui copie le contenu d'un fichier source vers un nouveau fichier en utilisant des redirections. Il prendra deux arguments en entrée : le nom du nouveau fichier et le fichier source.

### Job 05 - Utilisation des conditions

- Créez un script nommé `hello_bye.sh` qui affiche "Bonjour, je suis un script !" ou "Au revoir et bonne journée !" en fonction de l'argument passé.

### Job 06 - Mini-calculatrice

- Réalisez un script nommé `my_calculator.sh` qui effectue des opérations d'addition, de soustraction, de multiplication (utilisant 'x') et de division.

### Job 07 - Boucles en action

- Créez un script nommé `myloop.sh` qui utilise des boucles pour afficher un message 10 fois avec un chiffre incrémenté.

### Job 08 - Utilisation de Cron

- Découvrez et utilisez les tâches planifiées (Cron) pour exécuter périodiquement le script `get_logs.sh`. Ce script extrait le nombre de connexions d'un utilisateur à votre VM Linux, crée un fichier avec la date et l'heure, archive ce fichier et le déplace dans un sous-dossier.

### Job 09 - Gestion des droits d'accès

- Créez le script `accessrights.sh` qui crée des utilisateurs en fonction des informations d'un fichier CSV et leur attribue des permissions d'administrateur si nécessaire. Utilisez Cron pour surveiller les changements dans le fichier CSV.

---

Utilisez ce README.md comme guide pour votre projet "Shell.exe". Chaque section explique une tâche spécifique à accomplir, et vous pouvez ajouter des détails supplémentaires, des exemples d'utilisation et des explications pour chaque script. Bonne programmation !
#!/bin/bash

# Utiliser une boucle for pour afficher la phrase 10 fois
for ((i=1; i<=10; i++)); do
  # La boucle commence avec i égal à 1 et continue tant que i est inférieur ou égal à 10.
  # Après chaque itération, i est incrémenté de 1 (i++).
  echo "Je suis un script qui arrive à faire une boucle $i"
  # Affiche la phrase en utilisant la valeur actuelle de i.
done
# La boucle se termine lorsque i dépasse 10.
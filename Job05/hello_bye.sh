#!/bin/bash

# Hello
if [ "$1" == "Hello" ]; then
    # Vérifie si le premier argument est égal à "Hello".
    echo "Bonjour, je suis un script !"
    # Si l'argument est "Hello", affiche "Bonjour, je suis un script !"

# Bye
elif [ "$1" == "Bye" ]; then
    # Si l'argument n'est pas "Hello" mais égal à "Bye".
    echo "Au revoir et bonne journée !"
    # Si l'argument est "Bye", affiche "Au revoir et bonne journée !"

else
    # Si l'argument n'est ni "Hello" ni "Bye".
    echo "Pas d'argument proposé ou mauvais argument !"
    # Affiche "Pas d'argument proposé ou mauvais argument !"
fi
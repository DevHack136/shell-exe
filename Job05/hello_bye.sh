#!/bin/bash

# Hello
if [ "$1" == "Hello" ]; then
    echo "Bonjour, je suis un script !"

# Bye
elif [ "$1" == "Bye" ]; then
    echo "Au revoir et bonne journée !"

else
    echo "Pas d'argument proposé ou mauvais argument !"
fi

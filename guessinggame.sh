#!/bin/bash

guessing_game() {
    local files=$(ls -1 | wc -l)
    local guess

    while true; do
        read -p "Combien de fichiers se trouvent dans le répertoire actuel ? " guess

        if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
            echo "Veuillez entrer un nombre entier."
        elif [ "$guess" -lt "$files" ]; then
            echo "Trop bas."
        elif [ "$guess" -gt "$files" ]; then
            echo "Trop haut."
        else
            echo "Félicitations ! Vous avez deviné le nombre de fichiers correctement."
            break
        fi
    done
}

guessing_game

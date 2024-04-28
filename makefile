README.md: guessinggame.sh
    echo "# Guessing Game" > README.md
    echo "" >> README.md
    echo "Date et heure de création du fichier README.md: $$(date)" >> README.md
    echo "" >> README.md
    echo "Nombre de lignes de code dans guessinggame.sh: $$(cat guessinggame.sh | wc -l)" >> README.md

.PHONY: clean
clean:
    rm README.md

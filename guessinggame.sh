#!/usr/bin/env bash
count_files() {
    ls -1 | wc -l
}

file_count=$(count_files)
i=-1

echo "Bienvenue !"
echo "Combien de fichiers existent dans le repertoire courant?"

while [[ $i -ne $file_count ]]
do
    read -p "Entez votre guess: " guess

    if [[ $i -lt $file_count ]]; then
        echo "Votre guess est moins . Essayez encor une fois."
    elif [[ $i -gt $file_count ]]; then
        echo "Votre guess est elevee . Essayez encor une fois."
    else
        echo "felicitations !"
    fi
done

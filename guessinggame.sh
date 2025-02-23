#!/bin/bash

get_file_count() {
    echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)

echo "Guess how many files are in the current directory:"

while true; do
    read guess
    if [[ ! $guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
    elif [[ $guess -lt $file_count ]]; then
        echo "Too low. Try again:"
    elif [[ $guess -gt $file_count ]]; then
        echo "Too high. Try again:"
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done

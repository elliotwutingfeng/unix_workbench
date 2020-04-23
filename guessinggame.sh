#!/bin/bash
function check_guess() {
    if [[ $1 -lt $numfiles ]]
    then
        echo "Too low!"
    elif [[ $1 -gt $numfiles ]]
    then
        echo "Too high!"
    else
        echo "Congratulations!"
        game_end=0
    fi
}
numfiles=$(ls -1 | wc -l); game_end=1;
echo "How many files are in the current directory?"
while [[ $game_end -ne 0 ]]
do
    echo "Make a guess!"
    read guess
    check_guess guess
done

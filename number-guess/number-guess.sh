#!/bin/bash

clear

function test() {
    if [[ $1 -gt $2 ]]; then
        echo "TOO HIGH!"
    elif [[ $1 -lt $2 ]]; then
        echo "TOO LOW!"
    fi
}

function play() {
    echo "What should be the maximum number? (default is 100)"
    read NUMS
    if [ -z $NUMS ]; then
        NUMS=100
    fi

    NUMBER=0
    GUESSES=0
    RANDOMNUM=$(( RANDOM % $NUMS + 1 ))

    echo "Guess the number between 1 and $NUMS..."

    while [ $NUMBER != $RANDOMNUM ]; do
        if [[ $GUESSES -gt 0 ]]; then
            test $NUMBER $RANDOMNUM
        fi
        GUESSES=$(($GUESSES + 1))
        read -p "Guess #$GUESSES: " NUMBER
    done
    echo "
        #### Congratulations!!! ####
        
    You got it on your $(echo $GUESSES)th try out of $NUMS numbers!
    "

    read -n1 -p "Play again? (y/n) " PLAY_AGAIN
    if [[ "$PLAY_AGAIN" = "y" ]]; then
        clear
        play
    fi
}

play
clear

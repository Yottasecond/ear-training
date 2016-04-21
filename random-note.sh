#!/bin/sh

# Prints out a random note every five seconds
# Try thinking of an interval (say a perfect 5th) 
# Every time the note changes, play the note on your instrument.
# If you see a C, play a C.
# then sing the interval while thinking what pitch it is.. think G and sing G
# then play it to confirm you had the right pitch in your head.

# not even touching accidentals yet
notes=("A" "B" "C" "D" "E" "F" "G")

while [ 1 ]
do
    rand_note_seed=$$$(date +%s)
    rand_interval_seed=$$$(date +%s)
    selected_note=${notes[$rand_note_seed % ${#notes[@]}]}
    echo $selected_note
    sleep 5;
done

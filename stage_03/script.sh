#!/bin/bash

while true; do
    while true; do
        if read line; then
            if [ $(($line)) -ge 20000 ]; then
                lighttime=$(date +%s)
                echo "light detected"
                break
            else
                echo "weather is great"
            fi
        fi
    done <./light_data

    while true; do
        if read line; then
            if [ "$line" == "Clap!" ]; then
                claptime=$(date +%s)
                echo "clap detected"
                echo "time: " $(($claptime - $lighttime))
                echo "distance is " $(($(($claptime - $lighttime))*332)) "m"
                break
            fi
        fi
    done <./sound_data
done

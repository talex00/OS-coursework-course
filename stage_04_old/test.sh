#!/bin/bash

while true
do
    while read line;
    do
        if $line > 20000; then
            light=$(date +%s)
            echo light detected
        else
            echo "weather is great"
        fi
    done < /home/pi/IVT_33_Turkin/stage_04/light_data

    while read line;
    do
        if $line == clap!; then
            clap=$(date +%s)
            echo clap detected
            echo "time: " $(($clap - $light))
        fi
        exit
    done < /home/pi/IVT_33_Turkin/stage_04/sound_data
done
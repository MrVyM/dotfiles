#!/bin/bash

if [[ $(playerctl status -p spotify) != "Playing" ]]; then
    exit 0
fi

function updateImage
{
    if [ -f spotify-image.png ]; then
        rm spotify-image.png
    fi
    cp "$finalNameFile" spotify-image.png 
}

imageUrl=$(playerctl metadata -p spotify mpris:artUrl)
imageName=$(playerctl metadata -p spotify xesam:album)
imageArtist=$(playerctl metadata -p spotify xesam:albumArtist)
nameFile=$imageName-$imageArtist.jpeg
finalNameFile=$imageName-$imageArtist.png
cd ~/Downloads/
if [ ! -f "$finalNameFile" ]; then
    curl $imageUrl -o "$nameFile" --silent
    mogrify -format png "$nameFile" 
    rm "$nameFile"   
    updateImage
fi

if [ "$(ls "$finalNameFile" -l | cut -d " " -f 5)" -ne "$(ls spotify-image.png | cut -d " " -f 5)" ]; then
    updateImage
    notify-send -r 12 .$(ls "$finalNameFile" -l | cut -d " " -f 5).
    notify-send -r 14 .$(ls spotify-image.png -l | cut -d " " -f 5).
    notify-send -r 23 changement
fi
            

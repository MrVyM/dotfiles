#!/bin/bash

if [[ $(playerctl status -p spotify) != "Playing" ]]; then
    exit 0
fi

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
    if [ -f spotify-image.png ]; then
        rm spotify-image.png
    fi
    cp "$finalNameFile" spotify-image.png 
fi

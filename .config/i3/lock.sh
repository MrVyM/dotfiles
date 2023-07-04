nitrogen --set-zoom-fill --random /home/vym/.config/nitrogen/backgrounds --save
file=$(cat /home/vym/.config/nitrogen/bg-saved.cfg | grep file | cut -d "=" -f2)
destination=$(echo $file | rev | cut -d "/" -f 3- | rev)
file_destination="$destination/lock/"$(basename "$file")".png" 
if [ ! -f "$file_destination" ]; then
    if [[ $(file "$file" | grep 1920) ]]; then 
        convert -blur 0x3 "$file" "$file_destination" 
    else 
        convert -blur 0x3 -resize 1920x1080 "$file" "$file_destination" 
    fi
fi
i3lock -i "$file_destination" 

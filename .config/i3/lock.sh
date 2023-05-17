nitrogen --set-zoom-fill --random /home/vym/.config/nitrogen/backgrounds --save
FILE=$(cat /home/vym/.config/nitrogen/bg-saved.cfg | grep file | cut -d "=" -f2)
DESTINATION=$(echo $FILE | rev | cut -d "/" -f 3- | rev)
FILE_DESTINATION="$DESTINATION/lock/"$(basename "$FILE")".png" 
if [ ! -f "$FILE_DESTINATION" ]
then
    convert -blur 0x3 "$FILE" "$FILE_DESTINATION" 
fi
i3lock -i "$FILE_DESTINATION" 

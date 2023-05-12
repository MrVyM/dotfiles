FILE=$(cat /home/vym/.config/nitrogen/bg-saved.cfg | grep file | cut -d "=" -f2)
convert "$FILE" "$FILE.png" 
i3lock -i "$FILE.png"

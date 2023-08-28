#!/bin/bash

backup_file=".tempReadme"
newType=".jpg"

function converting()
{
    name=$1
    newName=$(echo "$(basename "$1" | sed 's/\(.*\)\..*/\1/')"$newType)
    echo "Converting ${name} to ${newName}"
    convert $name $newName
    echo -e "![${newName}](${newName})\n#### $newName" >> $backup_file
    rm $name
}

echo -e "# Wallpapers\n" > $backup_file
for f in $(ls | grep -v ".md\|.sh")
do 
    if [[ ! $(echo $f | grep $newType) ]] 
    then 
        converting $f
    else 
        echo -e "![${f}](${f})\n#### ${f}" >> $backup_file
    fi
done

cat README.md $backup_file | uniq > README.md
rm $backup_file

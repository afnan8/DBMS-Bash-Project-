#!/bin/bash
echo $'\n * RENAME DATABASE:\n\n --DATABASES EXISTING--'
ls -d */
echo -n $'\nEnter Database name: '
read old_name
if [[ ! -d "$old_name"  ]]; then
  clear
  echo $'Invalid Name :( \nPlease choose another name'
  ./renameDB.sh
fi
echo -n "Enter New Database name: "
read new_name
if [[ ! -d "$new_name"  ]]; then
  mv $old_name $new_name
  clear
  echo "Successful Rename Operation"
  exit
else
  clear
  echo $'Database name already exist \nPlease choose another name '
  ./renameDB.sh
fi


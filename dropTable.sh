#!/bin/bash
echo $'\n * DELETE TABLE:\n\n --TABELS EXISTING--'
ls
echo -n $'\n Enter Table name: '
read name
if [[ ! -f "$name"  ]]; then
  clear
  echo $'Invalid Name :( \nPlease choose another name'
  ./dropTable.sh
else
  rm $name
  clear
  echo "Successful Deletion Operation"
  exit
fi

#!/bin/bash
echo $'\n * DELETE DATABASE:\n\n --DATABASES EXISTING--'
ls -d */
echo -n $'\n Enter Database name: '
read name
if [[ ! -d "$name"  ]]; then
  clear
  echo $'Invalid Name :( \nPlease choose another name'
  ./deleteDB.sh
else
  rm -rf $name
  clear
  echo "Successful Deletion Operation"
  exit
fi


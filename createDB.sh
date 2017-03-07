#!/bin/bash
echo -n "Enter Database name: "
read name
if [[ ! -d "$name"  ]]; then
  clear
  mkdir -m 777 $name
  if [[ $?==0 ]]; then
    echo $'\n * DATABASE CREATED:\n\n --EXISTING DATABASES--'
    ls -d */
  else
    echo "failed"
    ls -d */
  fi
else
  clear
  echo $'Database already exist'

  PS3=$'\nPlease enter your choice: \nPress Enter If Menu doesnot apper\n'
  # echo $'\n * MAIN MENU:\n'
  select opt in "Use DB" "Quit"
  do
      case $opt in
          "Use DB")
              ./useDB.sh
              ;;
          "Quit")
              exit
              ;;
          *) echo invalid option;;
      esac
  done
  # export name
fi

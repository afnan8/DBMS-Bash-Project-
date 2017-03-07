#!/bin/bash
clear
 PS3=$'\nPlease enter your choice: \nPress Enter If Menu doesnot apper\n'
 echo $'\n * MAIN MENU:\n'
 select opt in "Create DB" "Use DB" "Rename DB" "Delete DB" "Quit"
 do
     case $opt in
         "Create DB")
             ./createDB.sh
             ;;
         "Use DB")
             ./useDB.sh
             ;;
         "Rename DB")
             ./renameDB.sh
             ;;
         "Delete DB")
             ./deleteDB.sh
             ;;
         "Quit")
             echo "Thank You..."
             exit
             ;;
         *) echo invalid option;;
     esac
 done


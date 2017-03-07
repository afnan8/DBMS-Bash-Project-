#!/bin/bash
if [ $# -eq 0 ]
  then
    clear
    echo $'\n --DATABASES EXISTING--'
    ls -d */
    echo -n $'\nEnter Database name: '
    read name
    cd $name
    clear
    echo "use "$name ">>"
# else
#   cd $1
#   echo "use "$1 ">>"
#
fi
PS3=$'\nPlease enter your choice: \nPress Enter If Menu doesnot apper\n'
 echo $'\n * OPERATIONS MENU:\n'
 select opt in "Create New Table" "Drop Table" "Select from Table" "Delete from Table" "Update date" "Back to Menu"
 do
     case $opt in
         "Create New Table")
             .././createTable.sh
             ;;
         "Drop Table")
             .././dropTable.sh
             ;;
         "Select from Table")
             .././selectFromTable.sh
             ;;
         "Delete from Table")
             .././deleteFromTable.sh
             ;;
         "Update Table")
             .././updateTable.sh
             ;;
         "Back to Menu")
              exit
             ;;
         *) echo invalid option;;
     esac
 done

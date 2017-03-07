#!/bin/bash
echo -n "Enter Table name: "
read name
if [[ ! -f "$name"  ]]; then
  clear
  umask 077; touch $name
  echo $'\n * SUCCESSFUL DATABASE CREATION:\n\n --DATABASES EXISTING--'
  ls
else
  clear
  echo $'Table already exist'
fi


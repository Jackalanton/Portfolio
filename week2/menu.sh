#!/bin/bash

# run the passwordCheck.sh script
./scripts/portfolio/week2/passwordCheck.sh

# check the exit code of the passwordCheck.sh script
if [ $? -eq 0 ]; then
  # if the password is correct, display the menu options
  echo "Welcome to the menu!"
  echo "1. Move File/Folder"
  echo "2. Make Folder"
  echo "3. Set Password"
  echo "4. Quit"

  # ask the user to select a menu option
  read -p "Enter your selection: " choice

  # handle the user's selection
  case $choice in
    1)
      ./scripts/portfolio/week1/filemover.sh
      ;;
    2)
      ./scripts/portfolio/week2/foldermaker.sh
      ;;
    3)
      ./scripts/portfolio/week2/setPassword.sh
      ;;
    4)
      echo "Goodbye!"
      exit 0
      ;;
    *)
      echo "Invalid selection. Goodbye!"
      exit 1
      ;;
  esac
else
  # if the password is incorrect, terminate the script
  echo "Access Denied. Goodbye!"
  exit 1
fi

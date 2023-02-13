#!/bin/bash

# run the passwordCheck.sh script
./scripts/portfolio/week2/passwordCheck.sh

# check the exit code of the passwordCheck.sh script
while [ $? -eq 0 ]; do
  # if the password is correct, display the menu options
  echo -e "\033[1;35mWelcome to the menu!\033[0m"
  echo -e "1.\033[1;36mMove File/Folder\033[0m"
  echo -e "2.\033[1;36mMake Folder\033[0m"
  echo -e "3.\033[1;36mCopy File/Folder\033[0m"
  echo -e "4.\033[1;36mSelf Destruct\033[0m"
  echo -e "5.\033[1;36mUse Web Downloader\033[0m"
  echo -e "6.\033[1;36mUse Calculator\033[0m"
  echo -e "7.\033[1;36mSet Password\033[0m"
  echo -e "8.\033[1;33mQuit \033[0m"

  # ask the user to select a menu option
  read -p "Enter your selection: " choice

  # handle the user's selection
  case $choice in
    1)
      ./scripts/portfolio/week1/filemover.sh
      sleep 1
      ;;
    2)
      ./scripts/portfolio/week2/foldermaker.sh
      sleep 1
      ;;
    3)
      ./scripts/portfolio/week3/filecopier.sh
      sleep 1
      ;;
    4)
      ./scripts/portfolio/week3/selfdestruct.sh
      sleep 1
      ;;
    5)
      ./scripts/portfolio/week3/webDownloader.sh
      sleep 1
      ;;
    6)
      ./scripts/portfolio/week3/calculator.sh
      sleep 1
      ;;
    7)
      ./scripts/portfolio/week2/setPassword.sh
      sleep 1
      ;;
    8)
      echo -e "\033[32mGoodbye! \033[0m"
      exit 0
      ;;
    *)
      echo -ne "\033[33mInvalid selection. Try something else!\033[0m"
      ;;
  esac
done
  # if the password is incorrect, terminate the script
  echo -e "\033[1;31m  Goodbye! \033[0m"
  exit 1


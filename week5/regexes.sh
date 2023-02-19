#!/bin/bash

echo -e "\033[1;35mHi lets search for some things!\033[0m"

while [ $? -eq 0 ]; do
  echo -e "\033[1;35mWelcome to the menu!\033[0m"
  echo -e "1.\033[1;36mSearch for all sed statements\033[0m"
  echo -e "2.\033[1;36mSearch for all lines that start with the letter m\033[0m"
  echo -e "3.\033[1;36mCSearch for all lines that contain three digit numbers\033[0m"
  echo -e "4.\033[1;36mSearch for all echo statements with at least three words\033[0m"
  echo -e "5.\033[1;36mSearch for all lines that would make a good password\033[0m"
  echo -e "6.\033[1;33mQuit \033[0m"

  # ask the user to select a menu option
  read -p "Enter your selection: " choice

  # handle the user's selection
  case $choice in
    1)
      grep -r "sed "
      sleep 1
      ;;
    2)
      grep -r "^m"
      sleep 1
      ;;
    3)
      grep -r "[0-9]\{3\}"
      sleep 1
      ;;
    4)
      grep -r "echo .*\b\w+\b.*\b\w+\b.*\b\w+\b"
      sleep 1
      ;;
    5)
      grep -r "^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*]).{8,}$"
      sleep 1
      ;;
    6)
      echo -e "\033[32mGoodbye! \033[0m"
      exit 0
      ;;
    *)
      echo -ne "\033[33mInvalid selection. Try something else!\033[0m"
      ;;
  esac
done
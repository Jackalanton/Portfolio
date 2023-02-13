#!/bin/bash

echo -e "\033[1;35mEnter the secret password: \033[0m"
# read the password from the user, hiding the input
read -s password

# hash the entered password and compare it to the hash in secret.txt
if echo "$password" | sha256sum -c secret.txt; then
  echo -e "\033[1;32mAccess Granted\033[0m"
  exit 0
else
  echo -e "\033[1;31mACCESS DENIED\033[0m"
  exit 1
fi
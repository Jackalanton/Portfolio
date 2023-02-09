#!/bin/bash

echo "Enter the secret password: "
# read the password from the user, hiding the input
read -s password

# hash the entered password and compare it to the hash in secret.txt
if echo "$password" | sha256sum -c secret.txt; then
  echo "Access Granted"
  exit 0
else
  echo "Access Denied"
  exit 1
fi

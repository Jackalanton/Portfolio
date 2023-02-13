#!/bin/bash

# ask the user for the secret password

echo "Enter the secret password: "

read -s password

# hash the entered password and store it in secret.txt

echo "$(echo "$password" | sha256sum)" > "./secret.txt"

echo "Password saved in secret.txt"
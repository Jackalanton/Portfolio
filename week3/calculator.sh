#!/bin/bash

echo "Welcome to the calculator"
echo "Enter first number: "
read num1
echo "Enter second number: "
read num2

echo "Choose what you would like done!"
  echo "1. Plus (+)"
  echo "2. Minus (-)"
  echo "3. Multiply (*)"
  echo "4. Divide (/)"

  # ask the user to select a operator option
  read -p "Enter your selection: " choice

# handle the user's selection
case $choice in
    1)
      result=$((num1 + num2))
        echo -e "\033[34mThe result is: $result\033[0m"
      ;;
    2)
      result=$((num1 - num2))
        echo -e "\033[32mThe result is: $result\033[0m"
      ;;
    3)
      result=$((num1 * num2))
        echo -e "\033[31mThe result is: $result\033[0m"
      ;;
    4)
       result=$((num1 / num2))
        echo -e "\033[35mThe result is: $result\033[0m"
      ;;
    *)
      echo "Invalid selection. Goodbye!"
      exit 1
      ;;
esac
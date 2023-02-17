#!/bin/bash 
      
#This function prints a given error     
printError()     
{     
    echo -e "\033[31mERROR:\033[0m $1"    
} 
      
#This function will get a value between the 2nd and 3rd arguments     
getNumber()    
{  
    #Produce random number to compare to player's input
    randomNumber=$((RANDOM % 100 + 1))

    read -p "$1: " input

    while (( $input != $randomNumber)); do

        if (( $input < $2 || $input > $3 )); then
      
            printError "Input must be between $2 and $3" 
      
      
        elif (( $input > $randomNumber)); then
      
            printError "Lower!" 
      
        else
      
            printError "Higher" 
      
        fi

    read -p "$1: " input

    done

} 
         
echo "Let's play a game!" 

sleep 1
      
echo "I am thinking of a number between 1 and 100" 

sleep 1

echo "Can you guess it?"

getNumber "Guess$1" 1 100
      
echo "Correct!" 
    					
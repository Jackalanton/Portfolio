#!/bin/bash

echo "Hi there! What would you like to move?"

read -r fileName

output1=$(find ~/scripts -name $fileName)

echo "$output1"

    if [[ -n $(find ~/scripts -name $fileName) ]]
    then
        echo "Where would you like to move $fileName?"

        read -r location
        output2=$(find ~/scripts -type d -name $location)

        echo "$output2"

    else
        echo "Could not find $fileName"
        exit 0
fi

    if [[ -n $(find ~/scripts -type d -name $location) ]]
    then
        echo "Sending to $location"

        mv -i $output1 $output2;

        echo "Complete"

        output3=$(find ~/scripts -name $fileName)

        echo "It is now located at: $output3"

    else
        echo "Could not find $location"
        exit 0
fi

exit 0
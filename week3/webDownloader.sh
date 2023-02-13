#!/bin/bash

while true; do
  echo "Enter the URL of the website you want to download (or type exit to quit):"
  read url

  if [ "$url" == "exit" ]; then
    break
  fi

echo "Enter the location to download the website:"
  read -r location
        output2=$(find ~/scripts -type d -name $location)

        echo "$output2"

if [[ -n $(find ~/scripts -type d -name $location) ]]
    then
        echo "Sending to $location"

        wget "$url" -P "$output2"

        echo "Complete"

    else
        echo "Could not find $location"
fi
  
  if [ $? -eq 0 ]; then
    echo "Website successfully downloaded."
  else
    echo "Website download failed."
  fi
done
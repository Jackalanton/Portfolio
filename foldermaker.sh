#!/bin/bash

read -p "Type the name of the folder you would like to create: " folderName # Directs user to type folder name

mkdir "$folderName" #Creates the named folder

exit 0
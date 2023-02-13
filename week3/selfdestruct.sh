#!/bin/bash

for i in {10..1}
do
    echo -e "Self-destruct sequence: $i\033[0K\r"
    sleep 1
done

echo "BOOM!"

for i in {1..8}
do
    case $i in
        1)  echo -ne "\033[31m        _ ._  _ , _ ._    \033[0m";;
        2)  echo -ne "\033[31m      (_ ' ( .  )_  .__) \033[0m";;
        3)  echo -ne "\033[31m    ( (  (    )    )  ) _) \033[0m";;
        4)  echo -ne "\033[31m   (__ (_   (_ . _) _) ,__)  \033[0m";;
        5)  echo -ne "\033[31m         --\ ' . /--   \033[0m";;
        6)  echo -ne "\033[31m            ;   ;    \033[0m";;
        7)  echo -ne "\033[31m            /   \    \033[0m";;
        8)  echo -ne "\033[31m   ________/_ __ \__________  \033[0m";;
    esac
    sleep 0.05
    echo
done

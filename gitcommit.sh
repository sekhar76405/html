#!/bin/bash
echo "press 1 for same msg and 2 for different msg :"
read choice
if [ $choice == 1 ]
then
	git add .
	value=$(<cache.txt)
	git commit -m "${value}"

else
  	git add .
	echo "Enter the msg: "
	read msg
	echo "${msg}" > cache.txt
	git commit -m "${msg}"
fi


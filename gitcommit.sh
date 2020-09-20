#!/bin/bash
echo "The commit message stored in cache is :"
cat cache.txt
printf "\n Press \n 1 to take commit msg from cache \n 2 for different msg : "
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


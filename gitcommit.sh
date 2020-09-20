#!/bin/bash

git add .
echo "Enter the msg: "
read msg
echo "${msg}" > cache.txt
git commit -m "${msg}"

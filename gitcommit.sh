#!/bin/bash

git add .
echo "Enter the msg: "
read msg
git commit -m "${msg}"

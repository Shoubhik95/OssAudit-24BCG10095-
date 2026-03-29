#!/bin/bash

STUDENT_NAME="Shoubhik Bhattacharya"

echo "======================================"
echo " Open Source Manifesto - $STUDENT_NAME"
echo "======================================"

read -p "Which tool do you use daily? " TOOL
read -p "What does freedom mean to you? " FREEDOM
read -p "What do you want to build? " BUILD

FILE="manifesto.txt"
DATE=$(date)

echo "On $DATE, I believe in open source." > $FILE
echo "I use $TOOL daily." >> $FILE
echo "Freedom means $FREEDOM to me." >> $FILE
echo "I want to build $BUILD and share it with others." >> $FILE

echo "------ Generated Manifesto ------"
cat $FILE

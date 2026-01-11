#!/bin/bash

myvar="Hey buddy, how are you?"

echo "The length of the value is ${#myvar}"
echo "The upper case is -- ${myvar^^}"
echo "The lower case is -- ${myvar,,}"
echo "${myvar/buddy/krishna}" #buddy get repcd by krishna
echo "${myvar:4:5}" #only prints buddy

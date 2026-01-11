#!/bin/bash

#defining an array

myArray=(1 something name "krishna the legend" batman iron)
#Each values is seprated by space

#How to print

echo "${myArray[1]}" #for specific
echo "${myArray[2]}" #here 3rd value will be printed

echo "${myArray[*]}" #prints all value in a single string
echo "${myArray[@]}" #prints all value in different string

echo "${myArray[*]:1:3}" #It will print value starting from 1 to 3(including). 
echo "${myArray[*]:1}" #if we dont provide final destination it will print till end starting from 1.

: << EOF just like ${myArray[whole]:start:how many from starting} 
whole = @ or * depends on your case
EOF


#How to update an array
myArray[1]=Nothing #'something' changed to 'Nothing'

#How to add an item in an array
myArray+=(item1) #Goes to at the end, single item
myArray+=(item3 item4) # at the end, multiple item 
myArray[20]=TheBadBoy #At specif place, Note that bash array is non-continious.

#Array length
echo ${#myArray[@]} #'#' gives length.

#Get all indexes of an array
echo ${!myArray[@]} # '!' gives index number

#Removing elements
unset myArray[3] #removes one element and also removes its index number.
unset myArray #removes whole array.

#key-value arrays (Bash 4+).

declare -A myArray #name declare
myArray=([name]=krishna [age]=19 [hobby]='ethical hacking')

echo ${myArray[name]} #name will print
myArray[type]=introver #adds new one
echo ${myArray[type]} #Type will print

: << EOF all other thins is same as normal array, also accesing, deleting and all other stuff literally same but insted of index it has key.
EOF

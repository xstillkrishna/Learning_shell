#!/bin/bash

#Case statement 

#basic syntax
read -p "Enter a number: " num

case $num in
    1)
        echo "One"
        ;;
    2)
        echo "Two"
        ;;
    3)
        echo "Three"
        ;;
    *)
        echo "Invalid number"
        ;;
esac

#Matching Multiple Values
read -p "Enter a vowel: " ch

case $ch in
    a|e|i|o|u)
        echo "Lowercase vowel"
        ;;
    A|E|I|O|U)
        echo "Uppercase vowel"
        ;;
    *)
        echo "Not a vowel"
        ;;
esac

#Using Wildcards (Globbing)
read -p "Enter filename: " file

case $file in
    *.txt)
        echo "Text file"
        ;;
    *.sh)
        echo "Shell script"
        ;;
    *.jpg|*.png)
        echo "Image file"
        ;;
    *)
        echo "Unknown file type"
        ;;
esac
#Wildcards
# * → any characters
# ? → single character
# [abc] → one character from list

#case does NOT understand numbers mathematically.
#It only does:-->pattern matching (text matching)
#But wildcards(each) works here like-->
case $n in
    [1-9])
        echo "Single digit number"
        ;;
esac
#This is character range, not numeric range






#Fall-Through Behavior
#1️⃣ ;; — Normal behavior (NO fall-through)
read -p "Enter number: " n

case $n in
    1)
        echo "One"
        ;;
    2)
        echo "Two"
        ;;
    *)
        echo "Other"
        ;;
esac
#Input 1 → prints One, Stops immediately

#2️⃣ ;& — Fall-through WITHOUT re-checking
read -p "Enter number: " n

case $n in
    1)
        echo "Matched 1"
        ;&
    2)
        echo "Matched 2 (executed even if not matched)"
        ;;
esac
#input 1:
#Matched 1, Matched 2 (executed even if not matched)

#3️⃣ ;;& — Fall-through WITH re-checking
read -p "Enter number: " n

case $n in
    1)
        echo "Matched 1"
        ;;&
    2)
        echo "Matched 2 (only if pattern matches)"
        ;;
esac
#input 1:--> Matched 1, (no second output)
#input 2:--> Matched 2, 
#real world example 
case $action in
    start)
        echo "Starting service"
        ;&
    restart)
        echo "Reloading config"
        ;;
esac
#input: start
#Starting service
#Reloading config




#🧠 Final One-Line Rule

🔴 ;; → stop
🟡 ;& → run next without check
🟢 ;;& → run next with check



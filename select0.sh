#!/bin/bash

#select syntax

while true
do
    select choice in Start Stop Exit
    do
        case $choice in
            Start)
                echo "Service started"
                break
                ;;
            Stop)
                echo "Service stopped"
                break
                ;;
            Exit)
                echo "Bye!"
                exit 0
                ;;
            *)
                echo "Invalid choice"
                ;;
        esac
    done
done

#output---> 1)Start
#           2)Stop
#           3)Exit
:<< EOF 
#select itself is a loop
EOF




#XLR8_BOMBER

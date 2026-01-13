#!/bin/bash

name=Krishna
age=19

echo "my name is $name and I'm $age yr old"

name=Anonymous

echo "New name is ${name}"  #safer way to echo with qoute.

HOSTNAME=$(hostname)  #HOSTNAME stores the value of hostname after it run

echo "The name of the present server is $HOSTNAME"

PWD=$(pwd)  #same PWD stores the value of pwd, means pwd first excutes and then result of pwd stored in PWD

echo "We're in Path $PWD"


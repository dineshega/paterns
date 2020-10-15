#!/bin/bash -x

echo "Welcome to User Registration Problem"

read -p "Enter First Name and last lame: " FLname
patflname='^[A-Z]{3,}[ ]?[A-Z]{3,}$'

if [[ $FLname =~ $patflname && $FLname =~ $patflname ]]
then
	echo "name registered"
else
	echo "name not registered"
fi
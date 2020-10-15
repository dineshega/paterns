#!/bin/bash -x

echo "Welcome to User Registration Problem"

read -p "Enter First Name: " Fname
patfname='^[A-Z]{3,}$'

if [[ $Fname =~ $patfname ]]
then
	echo "name registered"
else
	echo "name not registered"
fi
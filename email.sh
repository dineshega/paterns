#!/bin/bash -x

echo "Welcome to email pattern problem"

shopt -s extglob

read -p "enter Email: " email
pat1='^[a-zA-z0-9]+@[a-zA-Z0-9]+$'

if [[ $email =~ $pat1 ]]
then
	echo "valid"
else
	echo "invalid"
fi
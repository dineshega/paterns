#!/bin/bash -x

echo "Welcome to User Registration Problem"

read -p "enter Email: " email
pat1='^[a-zA-z0-9]+([.+-_][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-z]{2,4}([.][a-z]{2})*$'

if [[ $email =~ $pat1 ]]
then
	echo "email registered"
else
	echo "email not registered"
fi
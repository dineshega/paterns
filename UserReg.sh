#!/bin/bash -x

echo "Welcome to User Registration Problem"

shopt -s extglob

read -p "Enter password: " pass
patpass='^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}$'

if [[ $pass =~ $patpass ]]
then
	echo "password set"
else
	echo "passwors not set"
fi 
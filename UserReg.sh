#!/bin/bash -x

echo "Welcome to User Registration Problem"

shopt -s extglob

read -p "Enter First Name and last lame: " FLname
patflname='^[A-Z]{3,}[ ]?[A-Z]{3,}$'

if [[ $FLname =~ $patflname && $FLname =~ $patflname ]]
then
	echo "name registered"
else
	echo "name not registered"
fi

read -p "enter Email: " email
pat1='^[a-zA-z0-9]+([.+-_][a-zA-Z0-9]+)*@[a-zA-Z0-9]+.[a-z]{2,4}([.][a-z]{2})*$'

if [[ $email =~ $pat1 ]]
then
	echo "email registered"
else
	echo "email not registered"
fi

read -p "enter mobile number: " mb
pat2='^((\+){1}91){1}[ ]?[0-9]{10}$'
# +91 9876543210
# +919876543210

if [[ $mb =~ $pat2 ]]
then
	echo "mobile registered"
else
	echo "mobile not registered"
fi

read -p "Enter password: " pass
patpass='^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[*.!@$%^&(){}[].?+|\]).{8,}$'

if [[ $pass =~ $patpass ]]
then
	echo "password set"
else
	echo "passwors not set"
fi 
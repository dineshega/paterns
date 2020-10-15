#!/bin/bash -x

echo "Welcome to User Registration Problem"

read -p "enter mobile number: " mb
pat1='^((\+){1}91){1}[ ]?[0-9]{10}$'
# +91 9876543210
# +919876543210

if [[ $mb =~ $pat1 ]]
then
	echo "mobile registered"
else
	echo "mobile not registered"
fi
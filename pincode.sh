#!/bin/bash -x

echo "welcome to Pincode problem"

read -p "enter pincode: " pincode

pat1='^[0-9]{6}$'

if [[ $pincode =~ $pat1 ]]
then
	echo "valid"
else
	echo "invalid"
fi
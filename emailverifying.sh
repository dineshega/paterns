#!/bin/bash -x

pattern="^[a-zA-Z0-9]+([.+-_][a-z-A-Z0-9]+)*@[a-zA-Z0-9]+.[a-z]{2,3}([.][a-z]{2,3})*$"
va_in=("abc@yahoo.com"
		"abc-100@yahoo.com"
		"abc.100@yahoo.com"
		"abc111@abc.com"
		"abc-100@abc.net"
		"abc.100@abc.com.au"
		"abc@1.com"
		"abc@gmail.com.com"
		"abc+100@gmail.com")

inva_in=("abc@.com.my"
		"abc123@gmail.a"
		"abc123@.com"
		"abc123@.com.com"	
		".abc@abc.com"
		"abc()*@gmail.com"
		"abc..2002@gmail.com"
		"abc.@gmail.com"
		"abc@gmail.com.1a")

function test(){
	echo $1 | grep -P -q $pattern
	if [ $? -eq 0 ]
	then
		echo "sucess"
	else
		echo "fail"
	fi
}

echo "Valid Emails"
for i in ${va_in[@]}
do
	echo "$i"
	test $i
done

echo "Invalid Emails"
for j in ${inva_in[@]}
do
	echo "$j"
	test $j
done
#!/usr/bin/bash 

#Usage: accepts username and pw from the user and prints the base64 encoded form of the username and pw

function encode-logininfo(){

read -p "Enter your username: " username
read -s -p "Enter your password: " pw

echo " "
echo "Your username in base64 encoded form is: "
echo '$username' | base64
echo "Your password in base64 encoded form is: "
echo '$pw' | base64 

}

encode-logininfo

#!/usr/bin/bash 
#Usage: Decode obfuscation with base64 encoding
#decodes a base64 encoded input

function decode-base64(){
read -p "Enter the encoded text: " ciphertext
echo " "
echo "The decoded text is: "
echo $ciphertext | base64 -d

}
decode-base64

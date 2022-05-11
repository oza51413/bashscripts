#!/usr/bin/bash
#Description: Prompts user to enter a hash value of md5sum, sha1sum, sha256sum, or sha512sum and returns the hashtype

function identify-hash
{
#Prompt the user to enter the hash value as input
read -p "Enter your cryptographic hash value: " HASHVAL
echo "Processing..."

#Hash length: Uses awk to store the length of the hash value input
HASHLENGTH=$(echo $HASHVAL | awk '{print length}')

#Conditionals used to compare input to normal hash length

if[[ $HASHLENGTH -eq "32" ]]
	then
		echo "Hash type: md5"
elif [[ $HASHLENGTH -eq "40" ]]
	then
		echo "Hash type: sha1"
elif [[ $HASHLENGTH -eq "64" ]]
	then
		echo "Hash type: sha256"
elif [[$HASHLENGTH -eq "128" ]]
	then
		echo "Hash type: sha512"
else
	echo "unable to determine the hash used to generate the input"
fi

}
identify-hash

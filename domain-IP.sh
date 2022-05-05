#!/usr/bin/bash 
#Usage: Accepts a domain name as input and returns the IP address of the domain as output 

echo "Retrieving IP Address..."
echo " "

function get-IP{
#makes sure user input is given
if [[ -z $@ ]]
	then 
		echo "Please specify the domain name(s)"
		exit 1
fi

for names in $@
	do
	#using ping and grep commands to extract IP from ping output
		echo "IP address for $names is "
		ping $names -c 2 | grep "PING" | awk '{print $3}'

		# other way it could have been done 
		#ping $names -c 2 | awk
	done 
}
get-IP $@

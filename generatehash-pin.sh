#!/usr/bin/bash 
#Desc: generates all possible 9 digit pins hash and stores them in hashpins.txt

function generate-sha256hash{
	for i in {900000000..999999999{
		do
			echo $i | sha256sum >> hashpins.txt
		done

}
generate-sha256hash

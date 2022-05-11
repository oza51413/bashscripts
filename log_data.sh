#!/usr/bin/bash 

#Description: Retrieves and stores machine name, date, and processes running
#Usage: ./log_data.sh syslog auth.log

echo "Retrieving and storing log files..."
echo " "

function get-linuxlog{
#Checks if the user didnt input any log files
if [[ -z $@ ]]
	then
		echo "Please specify the log file(s): "
		exit 1
fi

for logfile in $@
	do 
		echo " " >> linuxeventlog.txt
		echo " " >> linuxeventlog.txt
		echo "|TIME|---------------|USER|--------------|PROCESS|" >> linuxeventlog.txt
		awk '{print $1,$2,$3,$4,$5}' $logfile >> linuxeventlog.txt
	done

}
get-linuxlog $@

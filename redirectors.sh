#!/bin/bash
LOGS_FOLDER="/var/log/shell-script/"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) 
TIME_STAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIME_STAMP.log"
mkdir -p $LOGS_FOLDER

USAGE(){
   echo "USAGE:: sudo su redirectors.sh package1 package2.."
    exit 1
}

  for package in $@ 
 do
   dnf list installed $package &>>$LOG_FILE
   if [ $? -ne 0 ]
   then
     echo "package not installed please install it" &>>$LOG_FILE
     else
     echo "package had already installed.."
   fi
 done
  




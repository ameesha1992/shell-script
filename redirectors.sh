#!/bin/bash
LOGS_FOLDER = "/var/log/shell"
SCRIPT_NAME = $(echo $0 cut -d "." -f1) 
TIME_STAMP  = $(date +%y-%m-%d-%h-%M-%s)
LOG_FILE    = $LOGS_FOLDER/$SCRIPT_NAME/$TIME_STAMP.log

for package in $@
 do
   dnf list installed $package
   if [ $? -ne 0 ]
   then
     echo "package not installed please install it"
          dnf install $package -y
          VALIDATE $? "installing package"   
   else
     echo "this package already exists"
   fi
 done
  


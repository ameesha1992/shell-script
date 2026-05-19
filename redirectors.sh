#!/bin/bash
LOGS_FOLDER = "/var/log/shell"
SCRIPT_NAME = $(echo $0 cut -d "." -f1) 
TIME_STAMP  = $(date +%y-%m-%d-%h-%M-%s)
LOG_FILE    = $LOGS_FOLDER/$SCRIPT_NAME/$TIME_STAMP.log

for package in $@ &>>LOG_FILE
 do
   dnf list installed $package &>>LOG_FILE
   if [ $? -ne 0 ]
   then
     echo "package not installed please install it" &>>LOG_FILE
          dnf install $package -y
          VALIDATE $? "installing package"   
   else
     echo "this package already exists" &>>LOG_FILE
   fi
 done
  


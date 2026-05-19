#!/bin/bash
LOGS_FOLDER="/var/log/shell"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) 
TIME_STAMP=$(date +%y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME/$TIME_STAMP.log"

  


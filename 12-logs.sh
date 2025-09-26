#!/bin/bash
userid=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-script"
SCRIPT_FILE=$( echo $0 | cut -d '.' -f1 )
LOG_FILE="$LOG_FOLDER/$SCRIPT_FILE.log" # /var/log/shell-script/12-logs.log

mkdir -p $LOG_FOLDER
echo "Script started executed at: $(date)"

if [ $userid -ne 0 ]; then
    echo "error:: run the script with root access" # if it is failed stop script excution
    exit 1 #failuers is other than 0 
fi

VALIDATE(){   #functions recive inputs through arhs jut like shell script arguments  
    if [ $1 -ne 0 ]; then
        echo -e " installing $2 is $R failuer $N"
        exit 1 # if it is failed stop script excution
    else
        echo -e "installing $2 is $G success $N"  | tee -a $LOG_FILE  
    fi
}

dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo -e "mySql already exists .. $Y SKIPPING $N " | tee -a $LOG_FILE  #append to log file

fi

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo -e "nginx is allredy exists.. $Y SKIPPING $N "
fi

dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "Python3"
else
    echo -e "pyhton is allredy exists.. $Y SKIPPING $N"
fi
#!/bin/bash
userid=$(id -u)

if [$userid -nq 0 ]; then
    echo "error:: run the script with root access" # if it is failed stop script excution
    exit 1 #failuers is other than 0 
fi

VALIDATE(){   #functions recive inputs through arhs jut like shell script arguments  
    if [$1 -nq 0]; then
        echo "error:: installing $2 is failuer"
        exit 1 # if it is failed stop script excution
    else
        echo "installing $2 is success"    
    fi
}

dnf install mysql -y
VALIDATE $? "Mysql"

dnf install nginx -y
VALIDATE $? "nginx"

dnf install mongodb-mongosh -y
VALIDATE $? "mongosh"


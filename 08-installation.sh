#!/bin/bash

userid=$(id -u)

if [$userid -nq 0 ]; then
    echo "error:: run the script with root access" # if it is failed stop script excution
    exit 1 #failuers is other than 0 
fi

dnf install mysql -y

if [$? -nq 0]; then
    echo "error:: installing mysql is failuer"
    exit 1 # if it is failed stop script excution
else
    echo "installing mysql is success"    
fi



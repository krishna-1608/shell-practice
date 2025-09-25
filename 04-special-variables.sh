#!/bin/bash

echo "all variables passed to scripts: $@"  #separtate string
echo "all variables passed to scripts: $*" #single string 
echo "script name : $0" 
echo "current dir : $PWD"
echo "who is running : $USER"
echo "home dire : $HOME"
echo "PID os this script : $$"
sleep 50 &
echo "PID os the last command background process is :$!"
echo "script status: $?" #if value is 0-script success  

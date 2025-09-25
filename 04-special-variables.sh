#!/bin/bash

echo "all variables passed to scripts: $@"  #separtate string
echo "all variables passed to scripts: $*" #single string 
echo "script name : $0"
echo "current dir : $PWD"
echo "who is running : $USER"
echo "home dire : $HOME"
echo ""PID os this script : $$
echo "script status: $?"

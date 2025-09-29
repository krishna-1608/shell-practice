#!/bin/bash

set -e 

trap 'echo "There is an error in $LINENO, Command is: $BASH_COMMAND"' ERR

echo "Hello.."
echo "Before error.."
ccaffj 
dnf 
echo "After error"
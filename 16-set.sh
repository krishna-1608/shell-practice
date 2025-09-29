#!/bin/bash

# Exit if any command in a pipeline fails
set -o pipefail

# This pipeline will fail and cause the script to exit
# The `ls` command will fail but `grep` will still run without this option
ls /does_not_exist | grep "something"

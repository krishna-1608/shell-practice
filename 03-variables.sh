#!/bin/bash

START_TIME=$(datee +%s)

sleep 5 

END_TIME=$(date +%S)

TOTAL_TIME=$(($START_TIME-$END_TIME))

echo "Total time for script excuted is : $TOTAL_TIME Sec "
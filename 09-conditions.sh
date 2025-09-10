#!/bin/bash

NUMBER=$1

if [ $NUMBER > 10]
then
    echo "Given number $NUMBER is less than 10"
else
    echo "Given number $NUMBER is not less than 10"
fi
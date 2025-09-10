#!/bin/bash

USERID=$(id -u)
if[ $USERIF -ne 0 ]
then 
     echo"Error :: please run this script without root access"
     exit 1
 else 
  echo "running with root access"

fi
dnf install mysql -y
if [ $? -eq 0 ]
then    
    echo "insatlling mysql is succcess"
else
    echo "Insatlling mysql is failure"
    exit1
fi
else
    echo "mysql already insstlled ----nothing to do"
fi





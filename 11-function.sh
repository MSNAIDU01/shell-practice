#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 upto 127
else
    echo "You are running with root access"
fi

VALIDATE() {
    if [ $1 -eq 0 ]
    then
        echo "Insatlling $2 is Success"
    else
        echo "Installing $2 is failure"
        exit1
    fi
}

dnf list installed mysql

# check already installed or not. if Installed $? is 0, then 
# If not installed $? is not 0. expression is true
if [ $? -ne 0 ]
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDATE $? "MySql"
else
    echo "MySQL is already installed...Nothing to do"
fi

dnf list installed python3

if [ $? -ne 0 ]
then
    echo "Python is insatlled. going to install it"
    dnf install python3 -y
    VALIDATE $? "python3
else
    echo "python is alreadyinsatlled...nothing to do"
fi

dnf list insatlled nginx


if [ $? -ne 0 ]
then
    echo "Nginxis insatlled .. going to install it"
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo "Nginx is alreay installed...nothing to do"
fi
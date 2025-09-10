#!/bin/bish

validate() {
    
if [ $1 -eq 0 ]
then 
    echo "installing $2 is success"
else 
    echo "Installing $2 is failure"
    exit1
fi

}


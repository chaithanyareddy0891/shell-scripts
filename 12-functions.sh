#!/bin/bash
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "try with root previlizes,root previlizes are missing "
    exit 1
fi
dnf list installed mysql
if [ $? -ne 0 ]
then
    echo "mysql is not avilable installing it"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation is not success..check it"
        exit 1
    else
        echo "mysql installation is success"
    fi
else
    echo "mysql is allready available, nothing to do"
fi

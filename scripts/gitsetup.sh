#!/usr/bin/env bash

default_user='ikeman32'
default_email='david.isakson.ii@gmail.com'

read -p 'n: new user d: default user c: cancel '  answer

if [ "$answer" = 'n' ]; then
    read -p 'Enter user name: ' username
    read -p 'Enter user email: ' useremail

    git config --global user.name "$username"
    git config --global user.email "$useremail"
else
    if [ "${answer}" = 'd' ]; then
        git config --global user.name $default_user
        git config --global user.email $default_email
    fi
fi

exit 

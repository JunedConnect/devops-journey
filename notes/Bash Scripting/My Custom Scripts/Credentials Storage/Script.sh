#!/bin/bash


#Assignment of Username
echo "Hello, please enter your name and we can get you set up with an account:"
read Name
Username=$(echo "$Name$RANDOM")

#Generation of Password
echo "What would you like the character length of your password to be:"
read PLength
Password=$(shuf -r -n $PLength random.txt | tr -d '\r\n')

#Storing Credentials within a CSV file
echo "$Username, $Password" >> LoginCredential.csv


echo "We have now set up your account with a username and password"
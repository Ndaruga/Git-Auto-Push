#!/bin/bash

read -p "Enter your Email: " user_email
read -p "Enter your Username: " user_name

# Global configurations
git config --global user.name="${user_name}"
git config --global user.email="${user_email}"



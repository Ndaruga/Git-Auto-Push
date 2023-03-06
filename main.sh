#!/bin/bash

# Read Username and email
read -p "Enter your Email: " user_email
read -p "Enter your Username: " user_name

# Global configurations
git config --global user.name="${user_name}"
git config --global user.email="${user_email}"

remote=$(git remote)
repo=$(basename `git rev-parse --show-toplevel`)


# Overide URL of origin remote using SSH instead of HTTPS
git remote set-url ${remote} git@github.com:${user_name}/${repo}.git

branch=$(git branch --show-current) #Show current branch name



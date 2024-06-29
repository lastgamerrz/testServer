#!/bin/bash

# Navigate to the directory where the script is located
cd "$(dirname "$0")"

# Add all changes to the staging area
git add .

# Get the current date and format it
current_date=$(date "+%Y-%m-%d %H:%M:%S")

# Commit changes with the current date as part of the commit message
git commit -m "Commit on $current_date"

# Push changes to the remote repository (replace 'main' with your branch name)
git push origin main

# Check the exit status of the git commands
if [ $? -ne 0 ]; then
    echo "Error: Git operation failed"
    exit 1
else
    echo "Git operations completed successfully"
fi

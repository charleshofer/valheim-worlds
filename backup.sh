#!/bin/bash

# Create a new backup dir in this repo
backup_dir=$(date +%Y-%m-%d)
mkdir $backup_dir

# Copy the world files into it
cp ./current/worlds/* $backup_dir

# Add the new dir to git
git add $backup_dir
git commit -m "Backup $backup_dir"
git push


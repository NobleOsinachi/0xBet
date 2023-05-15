#!/bin/bash

log_folder="logs/"
log_filename="$(date +'%Y%m%d%H%M%S').log"
log_filepath="${log_folder}${log_filename}"

# Create the log folder if it doesn't exist
mkdir -p "$log_folder"

# Create an empty log file
touch "$log_filepath"

git pull origin main

git add .

git status

git commit -m "Created log file $log_filepath.log"

git push origin main

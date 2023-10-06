#!/bin/bash
source_dir="/Staff2"
backup_dir="/staff3back"

# Create a timestamp for the backup folder
timestamp=$(date +%Y%m%d%H%M%S)

# Create the backup directory
mkdir -p "$backup_dir/$timestamp"

# Copy the contents of the source directory to the backup directory
cp -r "$source_dir"/* "$backup_dir/$timestamp/"

# Optional: Delete old backups (e.g., keep the last 5 backups)
find "$backup_dir" -type d -mtime +5 -exec rm -r {} \;


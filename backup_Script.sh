#!/bin/bash
source_dir="/home/monicah/Staff"
backup_dir="home/monicah/Staff_backup"
timestamp=$(date +%Y%m%d%H%M%S)
mkdir -p "$backup_dir/$timestamp"
cp -r "$source_dir"/* "$backup_dir/$timestamp/"
find "$backup:_dir" -type d -mtime +5 -exec rm -r {} \;

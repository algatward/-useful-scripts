#!/bin/bash

# bash script to backup the testing folder

backup_files="/home/adam/testing"
dest="/home/adam/backups"

#create archive filename
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

#print start statuc message
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

#backup the files using tar
tar czf $dest/$archive_file $backup_files

#print end status message
echo
echo "Backup complete."
date 

#long listing of files in $dest to check file sizes.
ls -lh $dest 

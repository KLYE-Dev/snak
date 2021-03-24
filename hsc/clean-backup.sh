#!/bin/bash
#this script will clean hsc-cli's backup files
BURRUW_OLD_FILES=($HOME/hsc-backup)

echo 
echo cleaning backup folder ....

if [ -d "$BURRUW_OLD_FILES" ]; then
    rm -r $BURRUW_OLD_FILES
else
    echo "There isn't any back up file!"    
fi

echo 
echo
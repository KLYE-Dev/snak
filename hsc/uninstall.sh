#!/bin/bash
#this script will uninstall hsc-cli and corresponding files

BURRUW_INSTALL_FILES_DIR=($HOME/hsc)

echo 
echo uninstalling hsc-cli ....

##########################################################################
# we create a folder named hsc-cli-backup and put the hsc-cli old files in it
# if already existed
if [ -d "$BURRUW_INSTALL_FILES_DIR" ]; then
    rm -r $BURRUW_INSTALL_FILES_DIR
fi


echo 
echo Finished!


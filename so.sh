#!/bin/bash

# Define local and remote file locations
LOCAL_PATH="/home/james/Desktop/linuxVault"
REMOTE_PATH="remote:rclone"

# Define the rclone command
RCLONE_COMMAND="rclone copy $LOCAL_PATH $REMOTE_PATH"

# Run the rclone command
echo "Running rclone command: $RCLONE_COMMAND"
$RCLONE_COMMAND

# Check the exit status of the command
if [ $? -eq 0 ]; then
    echo "rclone command executed successfully."
else
    echo "Error: rclone command failed."
fi

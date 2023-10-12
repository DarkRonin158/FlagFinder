#!/bin/bash

# Check if the correct number of arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <username> <password> <ip>"
    exit 1
fi

# Assign command line arguments to variables
username=$1
password=$2
ip=$3

# Connect to the remote host using SSH
sshpass -p "$password" ssh $username@$ip << EOF
    # Search for 'user.txt' or 'root.txt' using find and store the result in a variable
    file_path=\$(find / -type f -name 'user.txt' -o -name 'root.txt' 2>/dev/null)

    # Check if the file was found
    if [ -n "\$file_path" ]; then
        # Use cat to read the file
        cat "\$file_path"
    else
        echo "File not found."
    fi
EOF

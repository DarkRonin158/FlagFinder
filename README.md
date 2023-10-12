# FlagFinder
HTB flag finder needs testing

Here's what this script does:

    It checks if the correct number of arguments (username, password, and IP) are provided. If not, it prints a usage message and exits.
    It assigns the provided arguments to variables.
    It uses sshpass to provide the password to the ssh command, which connects to the remote host.
    Within the SSH session, it searches for user.txt first, and if not found, it looks for root.txt using locate. The result is stored in the file_path variable.
    It checks if a file was found. If so, it uses cat to read the file. If not, it prints a message indicating that the file was not found.

Make sure you have sshpass installed on your system to run this script. It's a utility that allows you to provide a password to ssh non-interactively.

You can run this script like so:

bash

./script.sh <username> <password> <ip>

Replace <username>, <password>, and <ip> with your specific values. Please be aware that storing passwords in scripts is generally not secure. If possible, consider using SSH keys or other secure methods for authentication.

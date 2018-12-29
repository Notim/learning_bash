##### all commands have --help or -h to get more info 
# Newbie Commands

**cd** - Changes the current working directory in the command line console. 
**mv** – Moves files and directories to another location. Can be used to rename files and directories by keep their source and destination locations the same.
**rm** – Remove and remove directory. Used to delete files and directories from the system, whether one at a time or in batch.
**cp** – Copies files to a new location with a new name depending on the parameters. Can copy directories too, whether recursively (includes all subdirectories) or not.
**mkdir / rmdir** – Creates a directory (mkdir) or deletes a specified directory (rmdir). Directories can only be created and deleted within directories that you have permission in.
**ls** – List all of the contents of a specified directory. If no directory is specified, it will use the current directory.
**exit** – Exits out of the current program, terminates the current command line terminal, or logs you out of a Unix network depending on the context.
**kill** – Terminates the specified running process. The Linux version of Windows’ “End Process” in the task manager.
**man** – There’s a running gag in the Linux community that man is the only command you need to know. It stands for manual, and it will give you detailed information on commands and aspects of Linux.
**pwd** – Displays the current working directory for the command line terminal. Good for when you’ve lost track of where you are in your system.
**reboot** – Immediately stops all running processes, shuts down the system, then reboots.
**shutdown** – Stops all running processes and shuts down the system. Parameters can be specified to issue a delayed shutdown or a shutdown at a particular time.
**sudo** – Runs commands as root, which means no limitations due to permissions.



# System Information

**date** – Prints out the current system date and time. Specified parameters can change the format of the output.
**df** – Reports the disk space usage for the file system.
**hostname** – Displays the name of the current host system.
**ps** – Displays information about all of the processes currently running on the system.
**quota** – Displays disk limits and current disk usage for a specified user. Useful when there are multiple users assigned to a particular system.
**top** – Displays all of the top processes in the system, by default sorted by CPU usage.
**uptime** – Reports how long the system has been running since last boot. Extremely useful for servers.

# File Manipulation

**bzip2** – Compresses specified contents into a .bz2 archive or extracts from a .bz2 archive depending on parameters.
**chmod / chown** – Changes the access permissions of one or more files (chmod) or changes the ownership of a particular file to a new user (chown). Only users with permission or ownership of a file can change that file’s permissions or ownership.
**find / locate** – Searches the system starting at a specific directory and matching all files within that location to a set of conditions laid out by the command parameters. Very useful for quickly finding certain files.
**grep** – Searches through all of the files in a specified location trying to find files that contain lines that match a given string. Returns a list of all the files that scored a match.
**install** – Used in conjunction with Makefiles to copy files from one location to the system. Not to be confused with installing packages from a software repository.
**open** – Opens a specified file using the default system application for files of its type.
**tar** – Creates a .tar archive or extracts from a .tar archive depending on specified parameters.
**zip** / unzip – Creates a .zip archive or extracts from a .zip archive depending on specified parameters.

# Other Noteworthy Commands
**apt-get** – Advanced Packaging Tool. Use this command to install, remove, and configure software packages on your system. For a menu-based version, use aptitude command. Available on Debian-based Linux distributions.
**pacman** – Advanced Packaging Tool. Use this command to install, remove, and configure software packages on your system. For a menu-based version, Available on Arch linux Linux distributions.
**ftp / sftp** – Connects to a remote FTP server in order to download multiple files.
**wget** – Downloads files from the Internet at the specified URL to your system.
**yum** – Yellowdog Updater, Modified. An open source package manager used to easily install software packages from repositories. Available on RPM-compatible Linux distributions.
**emacs** – One of the most well-known text editors on Unix-like systems.
**nano** – A newbie-friendly (my favourite :o) command-line text editor that uses keyboard shortcuts to simulate menus.
**vim** – Vim is the successor to Vi, both of which are command line text editors for Unix-like systems. Though Vim is popular, it doesn’t use menus or icons for its interface so it has a reputation for being newbie-friendly.

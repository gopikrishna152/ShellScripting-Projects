
# File Deletion Script

This script is designed to delete files older than 30 days in the specified directory.

## Script Details:

**Purpose**: The script takes a directory path as an argument and deletes any files in that directory that are older than 30 days.

**How it works**:
- The script checks the path provided as an argument.
- It uses the `find` command to locate files older than 30 days and deletes them.
- If the deletion is successful, a success message is displayed, otherwise, it will show an error message.

## Prerequisites:
- The script should be run on a Linux-based system with Bash shell.
- Ensure you have the necessary permissions to delete files in the specified directory.

## Usage:

### Running the script:

To use this script, follow these steps:

1. Open the terminal.
2. Navigate to the directory where the script is located.
3. Run the script by providing the path to the directory as an argument:

```bash
bash script.sh /path/to/directory
```

### Example:

```bash
bash script.sh /home/user/old_files
```

This will delete all files in the `/home/user/old_files` directory that are older than 30 days.

## Script:

```bash
#!/bin/bash
#
# This script deletes files older than 30 days in the given directory.
#

echo "This script deletes files which are older than 30 days"
path="$1"
echo $path
find $path  -mtime +30 -delete
if [[ $? -eq 0 ]];
then
   echo "Files are successfully deleted"
else
   echo "Deletion had some issues"
fi
```

### Notes:
- Be very careful while running this script as it permanently deletes files.
- The script assumes that the provided path is valid and accessible.


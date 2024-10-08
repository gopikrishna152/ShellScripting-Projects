
# Disk Usage Script

This is a simple bash script that finds and lists the **first 10 biggest files** in a given file system or directory passed as a **positional argument**. The script sorts the files by their size and displays them in descending order.

## Features

- The script accepts a directory path as input.
- It calculates the disk usage of files and directories in the given path.
- It sorts the files based on size and outputs the top 10 largest files.
- The result is saved to a temporary file (`/tmp/filesize.txt`) and then displayed to the user.

## Prerequisites

- **Linux or macOS** (any Unix-like operating system).
- **du** (disk usage), **sort**, and **head** utilities should be available by default on most Linux distributions.
  
## Usage

### Step 1: Save the Script

1. Create a new file named `script.sh`.
2. Copy and paste the following content into the file:

```bash
#!/bin/bash
echo "This program gets the first 10 biggest files in the file system passed via a positional argument"
path="$1"
echo "Path provided: $path"
du -ah $path | sort -hr | head -n 10 > /tmp/filesize.txt
echo "This is the list of the biggest files in the file system $path"
cat /tmp/filesize.txt
```

### Step 2: Grant Execute Permissions

Make the script executable by running the following command in your terminal:

```bash
chmod +x script.sh
```

### Step 3: Run the Script

You can now run the script by providing the path to the directory or file system as an argument.

Example usage:

```bash
./script.sh /path/to/directory
```

### Example:

If you want to check the biggest files in `/home/ubuntu`:

```bash
./script.sh /home/ubuntu
```

### Output:

The script will display the following output:

```
This program gets the first 10 biggest files in the file system passed via a positional argument
Path provided: /home/ubuntu
This is the list of the biggest files in the file system /home/ubuntu
<list of biggest files in /home/ubuntu>
```

The script will also save the results to a temporary file `/tmp/filesize.txt`, and the contents of this file will be displayed in the terminal.

## Notes

- Make sure that the directory you provide exists and is accessible.
- The `du -ah` command calculates the disk usage of files and directories recursively.
- The `sort -hr` sorts the files and directories by size in human-readable format in reverse order (largest first).
- The `head -n 10` limits the output to the first 10 entries.

## Troubleshooting

- **"No such file or directory"**: Ensure that the directory path exists and is accessible.
- **Permissions Issues**: Ensure that you have read permissions for the given directory and files.
  
## License

This script is free to use and modify under the MIT License.



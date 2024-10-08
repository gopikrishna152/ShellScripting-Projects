
# Disk Usage Monitoring Script

## Overview

This is a simple bash script that checks the disk usage of the root partition (`/dev/root`) on a Linux system. It alerts the user if the disk usage exceeds 80% and displays the remaining available disk space if it's below that threshold.

## Features

- Automatically checks the disk space usage of the `/dev/root` partition.
- Displays a warning if the disk usage exceeds 80%.
- Shows the available disk space percentage when below 80%.

## How to Use

1. Clone or download this repository.
2. Open a terminal and navigate to the folder containing the script.
3. Make sure the script is executable by running the following command:
   ```bash
   chmod +x disk_usage_monitor.sh
   ```
4. Run the script with the following command:
   ```bash
   ./disk_usage_monitor.sh
   ```

## Example Output

If the disk usage is below 80%, the script will output something like:
```
This is the script file for checking disk usage on a Linux system.
45% of the root partition is filled.
No Danger! 55% of the disk space is available.
```

If the disk usage exceeds 80%, the script will output a warning like:
```
This is the script file for checking disk usage on a Linux system.
85% of the root partition is filled.
Danger! Disk space is critically low!
```

## Prerequisites

- **Operating System**: This script is designed to run on Linux systems.
- **Permissions**: Ensure you have the appropriate permissions to execute the script and read the disk usage.

## How it Works

- The script uses the `df -h` command to get disk usage statistics in a human-readable format.
- It uses `grep` to filter for the `/dev/root` partition, `awk` to extract the percentage of used space, and `cut` to remove the percentage symbol.
- A simple `if` condition checks whether the disk usage exceeds 80% and prints a corresponding message.

## Customization

You can customize the threshold (currently set to 80%) by modifying this line in the script:
```bash
if [ $disk_size -gt 80 ]; then   
```
Simply change the `80` to the desired threshold value.

## License

This project is licensed under the MIT License. Feel free to modify and use the script as needed.


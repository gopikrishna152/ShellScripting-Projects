# Git Installation Script

This script automates the installation of Git on different operating systems. It detects the operating system (Linux or macOS) and installs Git accordingly using the appropriate package manager.

## Supported Operating Systems

- **Linux**: Uses `apt` for installing Git on Linux-based systems.
- **macOS**: Uses `brew` (Homebrew) for installing Git on macOS.
- **Other Operating Systems**: The script will notify if the operating system is unsupported.

## Prerequisites

- **Linux**: Ensure you have `sudo` privileges to install packages.
- **macOS**: Homebrew should be installed on your system. If not, install it first:
    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

## Script Details

The script uses the `uname` command to detect the OS and installs Git accordingly.

### Script Logic:

1. Checks if the operating system is Linux or macOS.
2. For **Linux**, it installs Git using `apt`.
3. For **macOS**, it installs Git using `brew`.
4. If the operating system is neither Linux nor macOS, the script outputs that the installation is not supported.

## Usage

1. Clone or download the script to your local machine.
2. Make sure the script is executable:
    ```bash
    chmod +x install_git.sh
    ```
3. Run the script:
    ```bash
    ./install_git.sh
    ```

## Sample Output

```bash
Script to install the Git software
Installation started
This is a Linux box
Reading package lists... Done
Building dependency tree       
Reading state information... Done
git is already the newest version.


# What is Linux?

Linux is a family of open-source Unix-like operating systems built around the Linux kernel. Key features include:

- **Open-Source:** Fully transparent code that can be inspected, modified, and redistributed.
- **Modular and Customizable:** Highly configurable to suit various needs—from lightweight systems to robust server environments.
- **Robust and Secure:** Designed for multitasking and multi-user environments, ensuring stability and strong security.

## Why Do DevOps Teams Use Linux?

Linux is integral to DevOps practices for several reasons:

- **Cost-Effectiveness:** Free and open-source, reducing licensing costs.
- **Stability & Reliability:** Distributions like Ubuntu LTS offer high uptime and consistent performance, essential for production environments.
- **Automation & Scripting:** Powerful shell environments (Bash, Zsh, etc.) and command-line tools facilitate efficient automation.
- **Ecosystem Compatibility:** Most DevOps tools (such as Ansible, Jenkins, Terraform) are built for or perform best on Linux.
- **Cloud Integration:** Major cloud providers offer Linux-based instances that integrate smoothly with automated deployment pipelines.

## Essential Linux Commands for DevOps

### 1. File System Navigation & Management

- **Listing Files and Directories:**
  ```sh
  ls           # List files and directories
  ls -la       # Detailed list including hidden files
  ```
- **Changing Directories:**
  ```sh
  cd /path/to/directory
  cd ~         # Go to home directory
  ```
- **Viewing the Current Directory:**
  ```sh
  pwd
  ```
- **Creating and Removing Directories:**
  ```sh
  mkdir new_directory
  rmdir empty_directory
  ```
- **Copying, Moving, and Deleting Files:**
  ```sh
  cp source.txt destination.txt  # Copy file
  mv oldname.txt newname.txt       # Rename or move file
  rm file.txt                      # Delete file
  rm -r directory/                 # Recursively remove directory
  ```

### 2. File Viewing and Editing

- **Viewing File Contents:**
  ```sh
  cat file.txt         # Display file content
  less file.txt        # Paginate file content for easier reading
  head file.txt        # View the first 10 lines (use -n for a specific number)
  tail file.txt        # View the last 10 lines (use -n for a specific number)
  tail -f file.txt     # Follow file changes in real time (useful for logs)
  ```
- **Editing Files:**
  ```sh
  vim file.txt         # Edit file with Vim
  nano file.txt        # Edit file with Nano
  ```

### 3. System Monitoring & Process Management

- **Monitoring System Processes and Resources:**
  ```sh
  top                  # Real-time process monitoring
  htop                 # Enhanced interactive process viewer (if installed)
  free -h              # Check memory usage in human-readable format
  df -h                # Disk space usage for mounted filesystems
  du -sh /path/to/directory  # Estimate directory size
  ```
- **Managing Processes:**
  ```sh
  ps aux               # List all running processes
  kill PID             # Terminate a process by PID
  pkill process_name   # Kill process by name
  ```
- **Service and System Management:**
  ```sh
  systemctl status service_name   # Check service status
  systemctl start service_name      # Start a service
  systemctl stop service_name       # Stop a service
  journalctl -xe                    # View detailed system logs
  ```

### 4. Networking and Remote Access

- **Secure Shell (SSH):**
  ```sh
  ssh user@hostname    # Connect to a remote host via SSH
  ```
- **Copying Files Remotely:**
  ```sh
  scp local_file user@remote_host:/path/to/destination
  ```
- **Checking Network Information:**
  ```sh
  ip addr              # Display IP addresses for all network interfaces
  netstat -tuln        # Display listening ports and associated services
  curl http://example.com   # Fetch content from a URL (useful for testing endpoints)
  wget http://example.com   # Download files from the web
  ```

.com### 5. Permissions and Ownership

- **Changing File Permissions:**
  ```sh
  chmod 644 file.txt   # Set file permissions (read-write for owner, read-only for group/others)
  chmod +x script.sh   # Make a file executable
  ```
- **Changing File Ownership:**
  ```sh
  chown user:group file.txt   # Change the owner and group of a file
  ```

### 6. Archiving and Compression

- **Creating and Extracting Archives:**
  ```sh
  tar -czvf archive.tar.gz /path/to/directory   # Create a compressed tarball
  tar -xzvf archive.tar.gz                        # Extract a compressed tarball
  zip archive.zip file1 file2                     # Create a zip archive
  unzip archive.zip                               # Extract a zip archive
  ```

### 7. Search and Filter Tools

- **Searching Within Files:**
  ```sh
  grep "search_term" file.txt            # Search for a term in a file
  grep -r "search_term" /path/to/directory  # Recursively search in a directory
  ```
- **Finding Files and Directories:**
  ```sh
  find /path -name "filename"            # Locate a file by name
  ```

---

#  Bash Log Cleanup Script

This project contains a simple **Bash script** that helps clean up old log files from a specified directory (like `/var/log`) to free up disk space and maintain system hygiene.

## 🔧 What It Does

- Deletes `.log` files older than X days (customizable)
- Can be scheduled using `cron`
- Useful for server cleanup and DevOps automation

##  Script

```bash
#!/bin/bash

LOG_DIR="/var/log"
DAYS=7

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;
# bash-log-cleanup-script


#!/bin/bash

# === Log Cleanup Script ===

# Set directory to clean (edit this path if needed)
TARGET_DIR="/var/log"

# Log file to save deleted file list
LOG_FILE="deleted_logs_$(date +%F_%T).log"

echo " Cleaning .log files older than 7 days in $TARGET_DIR"
echo "Deleted files log: $LOG_FILE"
echo "Cleanup started at $(date)" > $LOG_FILE
echo "-----------------------------------" >> $LOG_FILE

# Find and delete old log files, write each to log
find "$TARGET_DIR" -name "*.log" -type f -mtime +7 -print -delete >> $LOG_FILE

echo "✅ Cleanup complete. See $LOG_FILE for details."

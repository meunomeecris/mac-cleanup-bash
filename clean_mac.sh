#!/bin/bash

USER_HOME=$(eval echo ~$USER)
LOG_FILE="$USER_HOME/Desktop/mac-cleanup-script/clean_log.txt"

echo " Starting mac cleanup script..."
echo
echo "📆 Data: $(date)"

echo "🧹 Starting mac cleanup script... $(date)" >> "$LOG_FILE"
echo

# Function to get size in bytes
get_size_bytes() {
    du -sk "$1" 2>/dev/null | awk '{print $1 * 1024}'
}

total_freed=0

# Cleanup Caches
echo "⏳ Cache size before:"
cache_before=$(get_size_bytes "$USER_HOME/Library/Caches")
du -sh "$USER_HOME/Library/Caches"
rm -rf "$USER_HOME/Library/Caches"/*
cache_after=$(get_size_bytes "$USER_HOME/Library/Caches")
freed_cache=$((cache_before - cache_after))
total_freed=$((total_freed + freed_cache))
echo "✨ Cache size after:"
du -sh "$USER_HOME/Library/Caches"
echo

# Cleanup Logs
echo "⏳ Logs size before:"
logs_before=$(get_size_bytes "$USER_HOME/Library/Logs")
du -sh "$USER_HOME/Library/Logs"
rm -rf "$USER_HOME/Library/Logs"/*
logs_after=$(get_size_bytes "$USER_HOME/Library/Logs")
freed_logs=$((logs_before - logs_after))
total_freed=$((total_freed + freed_logs))
echo "✨ Logs size after:"
du -sh "$USER_HOME/Library/Logs"
echo

# Cleanup Cookies
echo "⏳ Cookies size before:"
cookies_before=$(get_size_bytes "$USER_HOME/Library/Cookies")
du -sh "$USER_HOME/Library/Cookies"
rm -rf "$USER_HOME/Library/Cookies"/*
cookies_after=$(get_size_bytes "$USER_HOME/Library/Cookies")
freed_cookies=$((cookies_before - cookies_after))
total_freed=$((total_freed + freed_cookies))
echo "✨ Cookies size after:"
du -sh "$USER_HOME/Library/Cookies"
echo

# Cleanup CrashReporter
echo "⏳ CrashReporter size before:"
crash_before=$(get_size_bytes "$USER_HOME/Library/Application Support/CrashReporter")
du -sh "$USER_HOME/Library/Application Support/CrashReporter"
rm -rf "$USER_HOME/Library/Application Support/CrashReporter"/*
crash_after=$(get_size_bytes "$USER_HOME/Library/Application Support/CrashReporter")
freed_crash=$((crash_before - crash_after))
total_freed=$((total_freed + freed_crash))
echo "✨ CrashReporter size after:"
du -sh "$USER_HOME/Library/Application Support/CrashReporter"
echo

# Show total space freed in human-readable format
echo "💻 Total space freed:"
total_space_freed=$(echo "$total_freed bytes" | awk '{
    hum[1024**3]="GB";hum[1024**2]="MB";hum[1024]="KB";
    for (x=1024**3; x>=1024; x/=1024) if ($1>=x) {
        printf "%.2f %s\n", $1/x, hum[x]; break
    }
}')
echo "$total_space_freed"
echo "💻 Total space freed: $total_space_freed" >> "$LOG_FILE"
echo "-------------------------------------------" >> "$LOG_FILE"
echo
echo "✅ Cleanup complete."

#!/bin/bash

USER_HOME=$(eval echo ~$USER)
LOG_FILE="$USER_HOME/Desktop/mac-cleanup-script/clean_log.txt"

echo "🧹 Starting mac cleanup script..."
echo
echo "📆 Data: $(date)"

echo "🧹 Starting mac cleanup script... $(date)" >> "$LOG_FILE"

# Delete system caches (safe ones)
rm -rf USER_HOME=$/Library/Caches/*
rm -rf USER_HOME=$/Library/Logs/*
rm -rf USER_HOME=$/Library/Cookies/*
rm -rf USER_HOME=$/Library/Application\ Support/CrashReporter/*

echo
echo "✅ Cleanup complete."
echo

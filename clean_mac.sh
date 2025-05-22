#!/bin/bash

echo "🧹 Starting macOS cleanup... $(date)"

# Delete Xcode DerivedData
rm -rf ~/Library/Developer/Xcode/DerivedData/*

# Delete system caches (safe ones)
rm -rf ~/Library/Caches/*
rm -rf ~/Library/Logs/*
rm -rf ~/Library/Cookies/*
rm -rf ~/Library/Application\ Support/CrashReporter/*

osascript -e 'display notification "Cleanup complete!" with title "Mac Cleaner"'

echo "✅ Cleanup complete."

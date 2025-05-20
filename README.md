# 💻 Mac Cleanup using Bash

Simple Bash scripts to help macOS users free up disk space.

These scripts were created for anywone who use heavy apps, and often run out of space.

## 🚀 What It Does

- Clears safe-to-remove folders that contains temporaries archives
- Automates the process using `cron` (daily at 8 AM)

- Folder                      - What's in it?
Library/Caches                App cache (browser, apps, etc.)
Library/Cookies               Session cookies
Library/Logs                  Error logs
Support/CrashReporter         Crash Reports


## 📌 Important: Full Disk Access Required

To allow your Terminal to access system folders:

1. Go to **System Settings > Privacy & Security > Full Disk Access**
2. Add your Terminal app (Terminal or iTerm)
3. Restart the Terminal

## 📂 How to Use

1. Download the script or clone this repo
2. Make the script executable:

```bash
chmod +x clean_mac.sh

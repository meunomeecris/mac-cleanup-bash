# 💻 Mac Cleanup using Bash

Simple Bash scripts to help macOS users free up disk space.

These scripts were created for anywone who use heavy apps, and often run out of space.

## 🚀 What It Does

- Clears safe-to-remove folders that contains temporaries archives
. Library/Caches                         
What's in it? Storage location used to temporarily store data used by servers, apps, and browsers.

. Library/Cookies    
Small files of information that a web server generates and sends to a web browser.

. Library/Logs
A file or record containing information about activities in a computer system.

. Support/CrashReporter
A system software whose function is to identify reporting crash details and to alert when there are crashes, in production or on development / testing environments.

- Automates the process using `cron` (daily at 8 AM)


# How to do it ?

## 1: Full Disk Access Required

To allow your Terminal to access system folders:

1. Go to **System Settings > Privacy & Security > Full Disk Access**
2. Add your Terminal app (Terminal or iTerm)
3. Restart the Terminal

## 2: How to Use

1. Download the script or clone this repo
2. Make the script executable:
3. Open the terminal and add the follow command: ```bash  chmod +x clean_mac.sh




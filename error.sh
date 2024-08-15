#!/bin/bash

# Identify the log file name
logfile="web-server-access-logs.log"

# Search for 404 errors, show them, Identify the IP address and provide the number of times these IP addresses occured

grep -m 10 "404" "$logfile" | awk -F ',' '{print $1}' | sort | uniq | uniq -c |sort -nr


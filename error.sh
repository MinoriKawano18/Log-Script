#!/bin/bash

# Identify the log file name
logfile="web-server-access-logs.log"

# Search for 404 errors, show them, Identify the IP address and provide the number of times these IP addresses occured

grep -m 10 "404" "$logfile" | awk -F ',' '{print $1}' | sort | uniq | uniq -c |sort -nr

#ubuntu@ip-172-31-83-6:~/Log-Script$ nano error.sh
#ubuntu@ip-172-31-83-6:~/Log-Script$ chmod +x error.sh
#ubuntu@ip-172-31-83-6:~/Log-Script$ ./error.sh 
     # 1 789090
     # 1 7829404
     # 1 6056278
     # 1 5602987
     # 1 5515639
     # 1 4048971
     # 1 404602
     # 1 3822884
     # 1 3089189
     # 1 2314148
#IP addresses found with a 404 error

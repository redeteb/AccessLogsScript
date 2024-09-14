#!/bin/bash

# One liner
# Read content of access.log
# Extract only IP Addresses
# Count the occurrences of each IP address to identify how many requests came from each IP.(unique addresses)
# Sort the list by the number of requests in descending order
# Save the sorted list to a file called ip_counts.txt



grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' access.log | sort | uniq -c | sort -nr > ip_counts.txt 

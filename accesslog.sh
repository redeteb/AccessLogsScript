#!/bin/bash

# One liner
# Read content of access.log
# Extract only IP Addresses
# Counts the occurrences of each IP address to identify how many requests came from each IP.(unique addresses)

# awk '{print $9'} access.log

grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' access.log | sort | uniq -c | sort -nr






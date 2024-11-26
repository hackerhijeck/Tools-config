#!/bin/bash

# Path to the file containing the list of IPs
IP_LIST="ips.txt"

# Path to the testssl.sh script
TESTSSL_PATH="./testssl.sh"

# Directory to save the results
RESULTS_DIR="results"
mkdir -p "$RESULTS_DIR"

# Loop through each IP address in the list
while IFS= read -r ip; do
  echo "Scanning IP: $ip"
  # Replace ":" with "_" in the filename to avoid issues with file naming
  output_file=$(echo "$ip" | tr ':' '_')
  $TESTSSL_PATH --htmlfile="$RESULTS_DIR/$output_file.html" "$ip"
done < "$IP_LIST"

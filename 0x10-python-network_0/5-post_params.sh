#!/bin/bash

# Check if required utility (curl) is installed
if ! command -v curl &> /dev/null; then
  echo "Error: curl is not installed. Please install curl and try again."
  exit 1
fi

# Define the target URL and port (replace with your actual server details if needed)
URL="http://localhost:5000"

# Define the email and subject for the POST request
email="test@gmail.com"
subject="I will always be here for PLD"

# Construct the POST data with email and subject variables
data="email=$email&subject=$subject"

# Send the POST request using curl and capture the response body
response=$(curl -s -X POST -d "$data" "$URL")

# Check if the request was successful (exit code 0 indicates success)
if [[ $? -eq 0 ]]; then
  echo "** Response body: **"
  echo "$response"
else
  echo "Error: The request failed."
fi

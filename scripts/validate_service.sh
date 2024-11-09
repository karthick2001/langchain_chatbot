#!/bin/bash

URL="http://localhost:8501"

echo "Validating service..."

# Check if the application is reachable
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS_CODE" -eq 200 ]; then
    echo "Service is running successfully!"
    exit 0
else
    echo "Service validation failed with status code $STATUS_CODE"
    exit 1
fi

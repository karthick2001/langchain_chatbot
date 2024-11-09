#!/bin/bash
echo "Validating service..."
RESPONSE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost:8501)
if [ "$RESPONSE" -eq 200 ]; then
    echo "Service is up and running."
    exit 0
else
    echo "Service validation failed with status code $RESPONSE"
    exit 1
fi

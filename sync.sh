#!/bin/sh
echo "[$(date)] Running sync... Destination: ${S3_PATH}"
aws s3 sync /sync/ "${S3_PATH}" --delete
echo "[$(date)] Sync done"
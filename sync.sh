#!/bin/sh
echo "[$(date)] Running sync..."
aws s3 sync /sync/ "${S3_PATH}" --delete
echo "[$(date)] Sync done"
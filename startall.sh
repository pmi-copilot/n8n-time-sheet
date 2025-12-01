#!/bin/sh
set -e

# Ensure n8n binds to all interfaces (required for Render)
export N8N_HOST=0.0.0.0
export N8N_PORT=5678

# Start n8n
exec n8n

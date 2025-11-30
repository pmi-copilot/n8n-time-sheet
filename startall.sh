#!/bin/sh
set -e

# 1) Start MCP gateway via supergateway (HTTP SSE on port 8080)
supergateway --sse --port 8080 "@azure-devops/mcp d2odevops" &

# 2) Start n8n
n8n

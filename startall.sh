#!/bin/sh
set -e

# 1) Start MCP gateway on port 8080
supergateway --sse --port 8080 "@azure-devops/mcp d2odevops" &

# 2) Start n8n (replace the current process with n8n)
exec n8n

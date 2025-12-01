#!/bin/sh
set -e

# 1) Start MCP gateway on port 8080 (--sse mode with proper command format)
supergateway --stdio "npx @azure-devops/mcp d2odevops" --port 8080 --outputTransport sse &

# 2) Start n8n (replace the current process with n8n)
exec n8n

FROM node:20-alpine

# Install supergateway and Azure DevOps MCP globally
RUN npm install -g supergateway @azure-devops/mcp

# Set working directory
WORKDIR /app

# Expose the MCP gateway port
EXPOSE 8080

# The AZURE_DEVOPS_PAT environment variable will be passed at runtime
# Run supergateway with the Azure DevOps MCP server
CMD ["sh", "-c", "supergateway --stdio \"npx -y @azure-devops/mcp\" --port 8080 --outputTransport sse"]

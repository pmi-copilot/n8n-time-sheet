FROM node:20-alpine

# Install supergateway and Azure DevOps MCP globally
RUN npm install -g supergateway @azure-devops/mcp

# Set working directory
WORKDIR /app

# Expose the MCP gateway port
EXPOSE 8080

# Environment variables required:
# - AZURE_DEVOPS_ORG: Your Azure DevOps organization name (e.g., "mycompany")
# - ADO_MCP_AUTH_TOKEN: Your Personal Access Token (PAT) for Azure DevOps

# Run supergateway with the Azure DevOps MCP server
# Using "envvar" authentication which reads ADO_MCP_AUTH_TOKEN from environment
CMD ["sh", "-c", "supergateway --stdio \"npx -y @azure-devops/mcp ${AZURE_DEVOPS_ORG} --authentication envvar\" --port 8080 --outputTransport sse"]

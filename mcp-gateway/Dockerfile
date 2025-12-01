FROM node:20-alpine

# Install supergateway and Azure DevOps MCP globally
RUN npm install -g supergateway @azure-devops/mcp

# Set working directory
WORKDIR /app

# Expose the MCP gateway port
EXPOSE 8080

# AZURE_DEVOPS_ORG - Your Azure DevOps organization name (e.g., "mycompany")
# AZURE_DEVOPS_PAT - Your Personal Access Token (set in Render env vars)

# Run supergateway with the Azure DevOps MCP server
# Using "env" authentication which reads AZURE_DEVOPS_PAT from environment
CMD ["sh", "-c", "supergateway --stdio \"npx -y @azure-devops/mcp ${AZURE_DEVOPS_ORG} --authentication env\" --port 8080 --outputTransport sse"]

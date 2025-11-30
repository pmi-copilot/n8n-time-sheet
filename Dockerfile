FROM n8nio/n8n:latest

# Use root to install global npm packages
USER root

# Install MCP gateway + Azure DevOps MCP provider globally
RUN npm install -g supergateway @azure-devops/mcp

# Go back to n8n's default user
USER node

# Copy entrypoint script
COPY startall.sh /startall.sh
RUN chmod +x /startall.sh

# n8n web UI
EXPOSE 5678
# MCP gateway
EXPOSE 8080

# Start script
CMD ["/startall.sh"]

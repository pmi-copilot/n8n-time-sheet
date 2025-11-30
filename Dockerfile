FROM n8nio/n8n:latest

# Use root to install global npm packages
USER root

# Install MCP gateway + Azure DevOps MCP provider globally
RUN npm install -g supergateway @azure-devops/mcp

# Go back to n8n's default user
USER node

# Copy entrypoint script
COPY start-all.sh /start-all.sh
RUN chmod +x /start-all.sh

# n8n web UI
EXPOSE 5678
# MCP gateway
EXPOSE 8080

# Start script
CMD ["/start-all.sh"]

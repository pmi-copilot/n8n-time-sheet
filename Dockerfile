FROM n8nio/n8n:latest

# Use root to install global npm packages
USER root

# Install MCP gateway + Azure DevOps MCP provider globally
RUN npm install -g supergateway @azure-devops/mcp

# Copy start script into a normal, writable location
COPY startall.sh /home/node/startall.sh

# Make sure it's owned by node user
RUN chown node:node /home/node/startall.sh

# Switch back to default n8n user
USER node

# n8n web UI
EXPOSE 5678
# MCP gateway
EXPOSE 8080

# Use tini to run sh, which runs our script (script doesn't need +x)
ENTRYPOINT ["tini", "--", "sh", "/home/node/startall.sh"]

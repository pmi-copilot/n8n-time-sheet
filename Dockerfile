FROM n8nio/n8n:latest

# n8n web UI
EXPOSE 5678

# Start n8n with proper host binding
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678

# Use default n8n entrypoint
CMD ["n8n"]

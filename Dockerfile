FROM hashicorp/consul:latest

# Copy custom config
COPY config.json /consul/config/config.json

# Expose necessary ports
EXPOSE 8500 8501

# Start Consul with configuration
CMD ["consul", "agent", "-config-dir=/consul/config"]

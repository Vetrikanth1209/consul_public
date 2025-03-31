FROM hashicorp/consul:latest

# Create data directory
RUN mkdir -p /consul/data && chmod -R 777 /consul/data

# Copy custom config
COPY config.json /consul/config/config.json

# Expose necessary ports
EXPOSE 8500 8501

# Start Consul with configuration
CMD ["consul", "agent", "-config-dir=/consul/config"]

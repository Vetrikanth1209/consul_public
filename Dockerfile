FROM hashicorp/consul:latest

# Create necessary directories
RUN mkdir -p /consul/config /consul/data

# Copy custom config
COPY config.json /consul/config/config.json

# Expose necessary ports
EXPOSE 8500 8501 8600/tcp 8600/udp

# Start Consul with config
CMD ["consul", "agent", "-server", "-bootstrap-expect=1", "-config-dir=/consul/config"]

# Use the official Consul image
FROM hashicorp/consul:latest

# Create the config directory inside the container
RUN mkdir -p /consul/config

# Copy the custom configuration file into the container
COPY config.json /consul/config/config.json

# Start Consul with the provided configuration
CMD ["consul", "agent", "-config-dir=/consul/config"]

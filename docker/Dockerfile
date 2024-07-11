# Use the official Ubuntu image as the base image
FROM ubuntu:20.04

# Set environment variables to avoid user interaction during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    vim \
    wget \
    openssh-client

# Set the default working directory
WORKDIR /workspace

# Expose port 4000 to the outside world (useful for web servers)
EXPOSE 4000

# Default command to run bash
CMD ["bash"]

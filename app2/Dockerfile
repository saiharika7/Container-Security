# Using the 'latest' tag, which is discouraged as it is not pinned to a specific version
FROM ubuntu:latest

# Running as root, which is insecure
USER root

# Installing packages without pinned versions and without using `-y`
RUN apt-get update && apt-get install curl wget -y

# Exposing an unnecessary port
EXPOSE 443

# Missing HEALTHCHECK instruction
# No HEALTHCHECK specified

# Sensitive data in ENV variables
ENV SECRET_KEY=supersecretkey

# Missing WORKDIR, files are copied into root directory

# Deprecated MAINTAINER instruction
MAINTAINER "bad@practice.com"

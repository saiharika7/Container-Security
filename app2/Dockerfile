# Using the 'latest' tag, which is discouraged as it is not pinned to a specific version
FROM ubuntu:22.03
# Installing packages without pinned versions and without using `-y`
RUN apt-get update && apt-get install curl wget -y
# Exposing an unnecessary port
EXPOSE 80

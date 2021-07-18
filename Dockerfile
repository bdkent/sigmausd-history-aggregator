FROM ubuntu:20.04

ARG NODE_VERSION="14.16.1-r1"

# Install cron
RUN apt-get update && apt-get install -y cron git curl

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install nodejs

ENV SIGMAUSD_DATA_PATH="/sigmausd_data"

# Add files
ADD ./scripts/run.sh /run.sh
ADD ./scripts/entrypoint.sh /entrypoint.sh
ADD ./scripts/scheduler.txt /scheduler.txt

RUN chmod +x /run.sh /entrypoint.sh

RUN mkdir -p /root/git

ENTRYPOINT /entrypoint.sh

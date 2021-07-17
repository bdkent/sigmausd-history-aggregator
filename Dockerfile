FROM ubuntu:16.04

# Install cron
RUN apt-get update && apt-get install -y cron curl

ENV SIGMAUSD_DATA_PATH="/sigmausd_data"

# Add files
ADD ./scripts/run.sh /run.sh
ADD ./scripts/entrypoint.sh /entrypoint.sh
ADD ./scripts/scheduler.txt /scheduler.txt

RUN chmod +x /run.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh

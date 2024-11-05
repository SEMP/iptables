FROM alpine:latest

RUN apk update && apk add iptables

# Copy the iptables script into the container
COPY iptables.sh /iptables.sh
RUN chmod +x /iptables.sh

# Set the entrypoint to the iptables script
ENTRYPOINT ["/iptables.sh"]


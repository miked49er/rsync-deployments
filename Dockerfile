FROM apline:latest

# Update
RUN apk --update --no-cache add rsync bash openssh-client

# Copy entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
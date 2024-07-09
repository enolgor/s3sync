FROM alpine:latest
RUN apk add --no-cache aws-cli
RUN echo "*       *       *       *       *       run-parts /etc/periodic/1min" >> /etc/crontabs/root
COPY sync.sh /etc/periodic/1min/sync
RUN chmod +x /etc/periodic/1min/sync
ENTRYPOINT ["crond", "-f", "-l", "8"]
FROM alpine:latest

RUN apk add --no-cache bash procps

COPY entrypoint.sh /entrypoint.sh
COPY script.sh /script.sh

RUN chmod +x /entrypoint.sh
RUN chmod +x /script.sh

ENTRYPOINT ["/entrypoint.sh"]


FROM alpine

RUN apk add --no-cache ca-certificates openssl bash
COPY dist/message-cannon /
COPY cannon.yml /

ENTRYPOINT ["/message-cannon"]
FROM alpine

RUN apk add --no-cache ca-certificates openssl bash
COPY dist/message-cannon /

ENTRYPOINT ["/message-cannon"]
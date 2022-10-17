FROM golang:alpine AS builder
WORKDIR $GOPATH/src/main
COPY . .
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/message-cannon

FROM scratch
COPY --from=builder /go/bin/message-cannon /message-cannon
ENTRYPOINT ["/message-cannon"]
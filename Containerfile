FROM golang:1.23.0
WORKDIR /

COPY *.go ./

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /OTEL-BasicApp

CMD ["/OTEL-BasicApp"]

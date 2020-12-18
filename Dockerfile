FROM golang:1.13

WORKDIR /go/src/app

COPY ./go.mod .

RUN go mod download

COPY ./main.go .

RUN go build -o /app ./main.go

CMD ["/app"]

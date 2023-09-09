FROM golang:latest

WORKDIR /app

RUN go mod init testmath 
COPY . .

RUN go build -o testmath

CMD ["./testmath"]
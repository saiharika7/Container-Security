# Build stage
FROM golang:1.21-alpine AS builder
WORKDIR /src
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o app .

# Runtime stage
FROM alpine:latest
WORKDIR /app
COPY --from=builder /src/app .

# Run as non-root user
RUN adduser -D appuser
USER appuser

EXPOSE 8080
CMD ["./app"]

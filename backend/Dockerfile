# dev stage: Air によるホットリロード
FROM golang:1.26-alpine AS dev
WORKDIR /app
RUN go install github.com/air-verse/air@latest
COPY go.mod go.sum ./
RUN go mod download
CMD ["air", "-c", ".air.toml"]

# build stage
FROM golang:1.26-alpine AS build
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o /payral ./cmd/api

# production stage
FROM gcr.io/distroless/static-debian12 AS prod
COPY --from=build /payral /payral
EXPOSE 8080
ENTRYPOINT ["/payral"]

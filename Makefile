.PHONY: build run test lint fmt migrate-up migrate-down docker-up docker-down

BINARY := bin/payfin
CMD     := ./cmd/api

build:
	go build -o $(BINARY) $(CMD)

run:
	go run $(CMD)

test:
	go test ./... -v -race

test-cover:
	go test ./... -coverprofile=coverage.out
	go tool cover -html=coverage.out

lint:
	cd backend && golangci-lint run ./...

fmt:
	gofmt -w .

# DB migration (golang-migrate)
migrate-up:
	migrate -path migrations -database "$$DATABASE_URL" up

migrate-down:
	migrate -path migrations -database "$$DATABASE_URL" down 1

migrate-create:
	migrate create -ext sql -dir migrations -seq $(name)

# Docker Compose (local dev)
docker-up:
	docker compose up -d

docker-down:
	docker compose down

# Load .env
-include .env
export

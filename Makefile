.PHONY: build run test lint fmt migrate-up migrate-down docker-up docker-down \
        mobile-run mobile-test mobile-analyze mobile-fmt mobile-build-android mobile-build-ios \
        proto-gen proto-lint

BINARY       := bin/payral
CMD          := ./cmd/api

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

# Proto code generation (buf)
proto-gen:
	buf generate

proto-lint:
	cd proto && buf lint

# DB migration (golang-migrate)
migrate-up:
	migrate -path backend/migrations -database "$(DATABASE_URL)" up

migrate-down:
	migrate -path backend/migrations -database "$(DATABASE_URL)" down 1

migrate-create:
	migrate create -ext sql -dir backend/migrations -seq $(name)

# Flutter (mobile)
mobile-run:
	cd mobile && flutter run

mobile-test:
	cd mobile && flutter test --coverage

mobile-analyze:
	cd mobile && flutter analyze

mobile-fmt:
	cd mobile && dart format .

mobile-build-android:
	cd mobile && flutter build apk --release

mobile-build-ios:
	cd mobile && flutter build ios --release

# Docker Compose (local dev)
docker-up:
	docker compose up -d

docker-down:
	docker compose down

# Load .env
-include .env
export

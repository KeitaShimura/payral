.PHONY: \
	backend-build backend-run backend-test backend-lint backend-fmt \
	backend-build-worker backend-run-worker \
	backend-migrate-up backend-migrate-down backend-migrate-down-one backend-migrate-create \
	mobile-run mobile-test mobile-lint mobile-analyze mobile-fmt \
	mobile-build-android mobile-build-ios \
	proto-gen proto-fmt proto-lint \
	docker-up docker-down

API_CMD    := ./cmd/api
WORKER_CMD := ./cmd/worker
# ─── Backend (Go) ────────────────────────────────────────────────────────────

backend-build:
	cd backend && go build $(API_CMD)

backend-run:
	cd backend && go run $(API_CMD)

backend-build-worker:
	cd backend && go build $(WORKER_CMD)

backend-run-worker:
	cd backend && go run $(WORKER_CMD)

backend-fmt:
	cd backend && go fmt ./...

backend-lint:
	cd backend && golangci-lint run ./...

backend-test:
	cd backend && go test ./... -v -race

backend-migrate-create:
	migrate create -ext sql -dir backend/migrations -seq $(name)

backend-migrate-down:
	migrate -path backend/migrations -database "$(DATABASE_URL)" down

backend-migrate-up:
	migrate -path backend/migrations -database "$(DATABASE_URL)" up

backend-migrate-down-one:
	migrate -path backend/migrations -database "$(DATABASE_URL)" down 1


# ─── Mobile (Flutter) ────────────────────────────────────────────────────────

mobile-run:
	cd mobile && flutter run

mobile-fmt:
	cd mobile && dart format .

mobile-lint:
	cd mobile && dart run custom_lint

mobile-analyze:
	cd mobile && flutter analyze

mobile-test:
	cd mobile && flutter test

mobile-build-android:
	cd mobile && flutter build apk --release

mobile-build-ios:
	cd mobile && flutter build ios --release

# ─── Proto ───────────────────────────────────────────────────────────────────

proto-gen:
	buf generate

proto-fmt:
	cd proto && buf fmt -w

proto-lint:
	cd proto && buf lint

# ─── Docker Compose (local dev) ──────────────────────────────────────────────

docker-up:
	docker compose up -d

docker-down:
	docker compose down

# ─── Load .env ───────────────────────────────────────────────────────────────

-include .env

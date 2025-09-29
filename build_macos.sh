#!/bin/zsh
set -euo pipefail
cd "$(dirname "$0")"
export CGO_ENABLED=1
export GO111MODULE=on
go mod tidy
go build -o dist/app ./cmd/app
echo "Built dist/app"


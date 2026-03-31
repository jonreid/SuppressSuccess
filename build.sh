#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/src"
go mod tidy
go build -o ../build/suppress_success-cli .
GOOS=windows GOARCH=amd64 go build -o ../build/suppress_success-windows.exe .

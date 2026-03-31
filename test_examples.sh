#!/usr/bin/env bash
cd "$(dirname "$0")"
bash build.sh

BIN="./build/suppress_success-cli"

"$BIN" echo "Hello"
"$BIN" --message "Hi" echo "Hello"
"$BIN" sh -c 'echo "Hello" && exit 1'
"$BIN" sh -c 'echo "Hello" && exit 42'

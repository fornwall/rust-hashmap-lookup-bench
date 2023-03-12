#!/bin/sh

echo "# Native run"
cargo bench

echo "# Wasmtime run"
CARGO_TARGET_WASM32_WASI_RUNNER="wasmtime --dir=." cargo wasi bench

echo "# Wasmer run"
CARGO_TARGET_WASM32_WASI_RUNNER="wasmer --dir=." cargo wasi bench

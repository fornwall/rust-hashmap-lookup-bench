#!/bin/sh

echo "# Native run"
cargo bench -q

echo "# Native run (RUSTFLAGS='-C target-cpu=native')"
RUSTFLAGS='-C target-cpu=native' cargo bench -q

echo "# Wasmtime run"
CARGO_TARGET_WASM32_WASI_RUNNER="wasmtime --dir=." cargo wasi bench -q

echo "# Wasmer run"
CARGO_TARGET_WASM32_WASI_RUNNER="wasmer --dir=." cargo wasi bench -q

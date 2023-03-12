#!/bin/sh

# See https://github.com/bytecodealliance/cargo-wasi/issues/128 for why --dir=. is necessary:
export CARGO_TARGET_WASM32_WASI_RUNNER="wasmtime --dir=."

cargo wasi bench

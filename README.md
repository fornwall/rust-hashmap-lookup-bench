# rust-hashmap-lookup-bench
A simple benchmark for lookups using `u32` keys in a hashmap.

# Native run
Run using `cargo bench`.

# WebAssembly run
Install [cargo wasi](https://github.com/bytecodealliance/cargo-wasi): `cargo install cargo-wasi`.

To run benchmark using [wasmtime](https://wasmtime.dev/), install that runtime and execute:

```sh
CARGO_TARGET_WASM32_WASI_RUNNER: "wasmtime --dir=." cargo wasi bench
```

To run benchmark using [wasmer](https://wasmer.io/), install that runtime and execute:

```sh
CARGO_TARGET_WASM32_WASI_RUNNER: "wasmer --dir=." cargo wasi bench
```

# Utility script
Execute [./run-bench.sh](run-bench.sh) to run the benchmark for all three runtimes (native, wasmtime, wasmer).

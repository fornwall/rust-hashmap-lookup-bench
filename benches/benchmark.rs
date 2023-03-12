use std::collections::HashMap;

use criterion::{black_box, criterion_group, criterion_main, Criterion};
use rand::Rng;

pub fn criterion_benchmark(c: &mut Criterion) {
    let mut rng = rand::thread_rng();

    let mut map = HashMap::new();
    for _ in 0..10_000_000 {
        let key: u32 = rng.gen();
        let value: u32 = rng.gen();
        map.insert(key, value);
    }

    let lookup_key: u32 = rng.gen();

    let benchmark_name = "lookup";
    c.bench_function(&benchmark_name, |b| {
        b.iter(|| black_box(map.get(&lookup_key)));
    });
}

criterion_group! {
    name = benches;
    config = Criterion::default();
    targets = criterion_benchmark
}

criterion_main!(benches);

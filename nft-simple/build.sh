#!/bin/bash
set -e
cd "`dirname $0`"
RUSTFLAGS='-C link-arg=-s' cargo build --target wasm32-unknown-unknown --release
cp target/wasm32-unknown-unknown/release/nft_simple.wasm ./out/main.wasm

# TBD

## Getting Started

### Initialize NFT-Contract

```
near call dev-1618575251240-1162312 new '{"owner_id":"buidl.testnet","metadata":{"spec":"nft-1.0.0","name":"NEAR Certified Developer","symbol":"NCD","icon":"https://swarm.dapplets.org/files/c7097f7634944bc84bc6ab86f8f1dda3e135d1485b669fee9b07c4b17839ed32"}}' --accountId=buidl.testnet
```

### Mint NFT

```
near call dev-1618575251240-1162312 nft_mint '{"token_id":"1","metadata":{"title":"Certificate of Excellence","description":"alsakhaev.near has successfully completed the requirements to be recognized as NEAR Certified Developer Level 1.","media":"https://swarm.dapplets.org/files/08c487004be2c82d355f4069efd7b907ab5f909987eb02567fc5ac586f4ed52e","media_hash":"PZXDIPCYku38KBqsKdVqoWrQO2y6/VpRDeUPxYtYIGQ=","copies":"1","issued_at":"2021-04-15"}}' --accountId=buidl.testnet --amount=0.01111
```

### Get metadata of NFT-Contract

```
near view dev-1618575251240-1162312 nft_metadata
```

### Get token IDs by Account ID

```
near view dev-1618575251240-1162312 nft_tokens_for_owner '{"account_id":"buidl.testnet"}'
```

### Get metadata of NFT by Token ID

```
near view dev-1618575251240-1162312 nft_token '{"token_id":"1"}'
```

### Mint Another NFT

```
near call dev-1618575251240-1162312 nft_mint '{"token_id":"2","metadata":{"title":"Test title","description":"Test description","copies":"1","issued_at":"1970-01-01"}}' --accountId=buidl.testnet --amount=0.00721
```

### Transfer NFT to antoher user

```
near call dev-1618575251240-1162312 nft_transfer '{"receiver_id":"nik3ter.testnet","token_id":"2"}' --accountId=buidl.testnet --amount 0.000000000000000000000001
```

## Troubleshoots

If you got the error
```
error[E0463]: can't find crate for core|  = note: the "wasm32-unknown-unknown" target may not be installed
```
try to run
```
rustup target add wasm32-unknown-unknown
``` 
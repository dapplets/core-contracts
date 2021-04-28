# TBD

## Getting Started

### Initialize NFT-Contract

```
near call dev-1619612403093-1786669 new '{"owner_id":"buidl.testnet","metadata":{"spec":"nft-1.0.0","name":"NCD Certificates","symbol":"NCD","icon":"https://arweave.net/Ses-QBS2ZUnFWVfcmE9fwnV6WtAombxkmVkKFlU75vE"}}' --accountId=buidl.testnet
```

### Add minter
```
near call dev-1619612403093-1786669 add_minter '{"minter_id":"buidl.testnet"}' --accountId=buidl.testnet
```

### Remove minter
```
near call dev-1619612403093-1786669 remove_minter '{"minter_id":"buidl.testnet"}' --accountId=buidl.testnet
```

### Mint NFT

```
near call dev-1619612403093-1786669 nft_mint '{"token_id":"1","metadata":{"title":"Certificate of Excellence","description":"alsakhaev.near has successfully completed the requirements to be recognized as NEAR Certified Developer Level 1.","media":"https://swarm.dapplets.org/files/08c487004be2c82d355f4069efd7b907ab5f909987eb02567fc5ac586f4ed52e","media_hash":"PZXDIPCYku38KBqsKdVqoWrQO2y6/VpRDeUPxYtYIGQ=","copies":"1","issued_at":"2021-04-15"},"owner_id":"buidl.testnet"}' --accountId=buidl.testnet
```

### Get metadata of NFT-Contract

```
near view dev-1619612403093-1786669 nft_metadata
```

### Get token IDs by Account ID

```
near view dev-1619612403093-1786669 nft_tokens_for_owner '{"account_id":"buidl.testnet"}'
```

### Get metadata of NFT by Token ID

```
near view dev-1619612403093-1786669 nft_token '{"token_id":"1"}'
```

### Mint Another NFT

```
near call dev-1619612403093-1786669 nft_mint '{"token_id":"2","metadata":{"title":"Test title","description":"Test description","copies":"1","issued_at":"1970-01-01"}}' --accountId=buidl.testnet
```

### Transfer NFT to antoher user

```
near call dev-1619612403093-1786669 nft_transfer '{"receiver_id":"nik3ter.testnet","token_id":"2"}' --accountId=buidl.testnet --amount 0.000000000000000000000001
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
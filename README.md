# DEPRECATED
> [!WARNING]  
> This is no longer supported as native Gnosis Chain support has been introduced. Please consider using the interactive guide provided in [documentation](https://docs.gnosischain.com/node/manual/).

# Prysm Client - Docker

This projects builds a customized version of the prysm client with Gnosischain modifications. Those include the integrations with different testnets.

- [gnosischain/prysm-beacon](https://hub.docker.com/repository/docker/gnosischain/prysm-beacon)
- [gnosischain/prysm-validator](https://hub.docker.com/repository/docker/gnosischain/prysm-validator)

Images are referenced under the following pattern `gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}` for example

```
docker pull gnosischain/prysm-beacon:latest-chiado
```

## Prysm reference

- General https://docs.prylabs.network/docs/getting-started
- CLI Reference https://docs.prylabs.network/docs/prysm-usage/parameters

# Starting Prysm in Chiado testnet

1. Add an `.env` file with your fee recepient and graffiti

```
FEE_RECIPIENT=0x0000000000000000000000000000000000000000
GRAFFITI=gnosischain/prysm
```

2. Add your keystores in `./keystores` and their password in a file `./keystores/password.txt` to get this file structure:

```
.
├── docker-compose.yml
├── .env
├── jwtsecret
└── keystores/
    ├── keystore-001.json
    ├── keystore-002.json
    └── password.txt
```

3. Run `./setup.sh` to create a new `./jwtsecret` token + import your validators.

```
./setup.sh
```

4. Start `docker-compose.yml` services from this repository

```
docker-compose up -d
```

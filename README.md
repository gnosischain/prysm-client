# Prysm Client - Docker

This projects builds a customized version of the prysm client with Gnosischain modifications.

Those include the integrations with different testnets.

## Image tagging 

Images are referenced under the following pattern. 

```
gnosischain/{client_provider}-{node_type}:{upstream_version}-{testnet}
```

i.e.

```
docker pull gnosischain/prysm-validator:v2.1.2-gbc-chiado 
```

We provide prysm as validator and beacon. 


## Dockerhub 

[Beacon image](https://hub.docker.com/repository/docker/gnosischain/prysm-beacon)  

[Validator image](https://hub.docker.com/repository/docker/gnosischain/prysm-validator)


## More information on how the prysm client works and can be customized can be found here:  

General  
https://docs.prylabs.network/docs/getting-started

CLI Reference  
https://docs.prylabs.network/docs/prysm-usage/parameters


# Starting prysm in beacon mode
As an example we can run with version v.2.1.2-gbc in testnet chiado as beacon: 

```
docker pull gnosischain/prysm-validator:v2.1.2-gbc-chiado  
docker run gnosischain/prysm-validator:v2.1.2-gbc-chiado 
```

Customization through flags: 
```
docker run gnosischain/prysm-validator:v2.1.2-gbc-chiado --enable-db-backup-webhook
```

# Starting prysm in validator mode

As an example we can run with version v2.1.2-gbc in testnet chiado as validator:

```
docker pull gnosischain/prysm-validator:v2.1.2-gbc-chiado  
docker run gnosischain/prysm-validator:v2.1.2-gbc-chiado

```

Customization through flags: 


```
docker run gnosischain/prysm-validator:v2.1.2-gbc-chiado --enable-db-backup-webhook

```




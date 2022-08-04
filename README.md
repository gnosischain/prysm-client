# Starting the container in beacon mode

```
Dockerhub: 
https://hub.docker.com/repository/docker/gnosischain/prysm-beacon


To run: 

docker run gnosischain/prysm-beacon:{upstream_version}-{testnet}

i.e. 
docker run gnosischain/prysm-beacon:v2.1.2-gbc-chiado

```

# Starting the container in validator mode

```

Dockerhub: 
https://hub.docker.com/repository/docker/gnosischain/prysm-validator

To run: 

docker run gnosischain/prysm-{client_type}:{upstream_version}-{testnet}
i.e.
docker run gnosischain/prysm-validator:v2.1.2-gbc-chiado

```

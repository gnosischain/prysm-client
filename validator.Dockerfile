ARG UPSTREAM_VERSION
FROM ghcr.io/gnosischain/gbc-prysm-validator:${UPSTREAM_VERSION}

COPY chiado/config.yaml /usr/config.yaml

ENTRYPOINT [ \
  "/app/cmd/validator/validator", \
  "--chain-config-file=/usr/config.yaml" \
]

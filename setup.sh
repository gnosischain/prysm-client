# Create a file `./jwtsecret` with a random 32 bytes hex string

echo -n 0x$(openssl rand -hex 32 | tr -d "\n") > ./jwtsecret

# Import keystores

mkdir ./validator-data
echo "prysm-pass" > ./validator-data/wallet-pass.txt

docker run \
  --volume $PWD/keystores:/var/lib/keystores \
  --volume $PWD/validator-data:/var/lib/validator-data \
  prysmaticlabs/prysm-validator \
  accounts import \
  --accept-terms-of-use \
  --wallet-dir /var/lib/validator-data/wallet \
  --wallet-password-file /var/lib/validator-data/wallet-pass.txt \
  --keys-dir /var/lib/keystores \
  --account-password-file=/var/lib/keystores/password.txt

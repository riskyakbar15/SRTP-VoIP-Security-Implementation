#!/bin/bash

# Membuat direktori penyimpanan sertifikat Asterisk
sudo mkdir -p /etc/asterisk/keys

# Membuat private key dan self-signed certificate TLS
sudo openssl req -new -x509 -days 365 -nodes \
  -out /etc/asterisk/keys/asterisk.crt \
  -keyout /etc/asterisk/keys/asterisk.key \
  -subj "/C=ID/ST=Sulsel/L=Makassar/O=Group10/CN=voip.group10.local"

echo "TLS certificate and private key created successfully."
echo "Certificate: /etc/asterisk/keys/asterisk.crt"
echo "Private Key: /etc/asterisk/keys/asterisk.key"
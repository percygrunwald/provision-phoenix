#!/usr/bin/env bash

# Install Let's Encrypt helper
git clone https://github.com/letsencrypt/letsencrypt
sudo openssl dhparam -out /etc/nginx/dhparam.pem 2048
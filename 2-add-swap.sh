#!/usr/bin/env bash

sudo fallocate -l 4G /swapfile && \
sudo chmod 600 /swapfile && \
sudo mkswap /swapfile && \
sudo swapon /swapfile && \
echo "/swapfile   none    swap    sw    0   0" | sudo tee -a /etc/fstab && \
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.conf && \
echo "vm.vfs_cache_pressure = 50" | sudo tee -a /etc/sysctl.conf
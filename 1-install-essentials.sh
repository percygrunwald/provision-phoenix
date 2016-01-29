#!/usr/bin/env bash

# Add Erlang Solutions repo
wget -P ~ https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
sudo dpkg -i ~/erlang-solutions_1.0_all.deb

# Update repos and upgrade
sudo apt-get update
sudo apt-get upgrade -qq

# Install Packages
sudo apt-get install -y --fix-missing language-pack-en curl gnupg build-essential \
git-core curl zlib1g-dev libssl-dev libreadline-dev \
libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev \
python-software-properties libffi-dev \
apt-transport-https ca-certificates \
git imagemagick libgmp3-dev \
postgresql-9.3 \
nodejs esl-erlang elixir inotify-tools

# Install Phoenix
yes | mix local.hex
yes | mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
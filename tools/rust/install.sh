#!/bin/bash

export CARGO_NET_GIT_FETCH_WITH_CLI=true

# rust
bash <(curl https://sh.rustup.rs -sSf) -y

# rustfmt
rustup component add rustfmt

# clippy
rustup component add clippy

# cargo edit
sudo apt-get -y install \
    pkg-config \
    libssl-dev
cargo install cargo-edit

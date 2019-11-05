#!/bin/bash

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

#!/bin/bash

# rust
bash <(curl https://sh.rustup.rs -sSf) -y

# rustfmt
rustup component add rustfmt

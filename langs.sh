#!/bin/bash

PACKAGES=(
  golang
  elixir
  erlang
  elixir-doc
  erlang-doc
)

dnf5 install -y "${PACKAGES[@]}"

# Configure and install Rustup and Rust
mkdir -p /etc/rust/rustup
mkdir -p /etc/rust/cargo
# Allow others to write to rust folder too, otherwise builds and the like will fail
chmod o+w -R /etc/rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -q -y --no-modify-path

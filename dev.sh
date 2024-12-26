#!/bin/bash

PACKAGES=(
  golang
  nvim
)

dnf5 install -y "${PACKAGES[@]}"

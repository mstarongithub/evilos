#!/usr/bin/bash

# /tmp/copr-helper.sh atim starship
# /tmp/copr-helper.sh sramanujam atuin

dnf5 copr enable atim/starship -y
dnf5 copr enable sramanujam/atuin -y
dnf5 copr enable varlad/zellij -y

PACKAGES=(
  eza
  ripgrep
  atuin
  starship
  fish
  bat
  nvim
  zellij
)

dnf5 install -y "${PACKAGES[@]}"

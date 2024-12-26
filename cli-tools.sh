#!/usr/bin/bash

# /tmp/copr-helper.sh atim starship
# /tmp/copr-helper.sh sramanujam atuin

dnf5 copr enable atim/starship
dnf5 copr enable sramanujam/atuin

PACKAGES=(
  eza
  ripgrep
  atuin
  starship
  fish
  bat
)

dnf5 install -y "${PACKAGES[@]}"

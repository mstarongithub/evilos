#!/usr/bin/bash

# Docker repo
tee /etc/yum.repos.d/docker-ce.repo <<'EOF'
[docker-ce-stable]
name=Docker CE Stable - $basearch
baseurl=https://download.docker.com/linux/fedora/$releasever/$basearch/stable
enabled=1
gpgcheck=1
gpgkey=https://download.docker.com/linux/fedora/gpg
EOF

PACKAGES=(
  containerd.io
  docker-buildx-plugin
  docker-ce
  docker-ce-cli
  docker-compose-plugin
)

dnf5 install -y "${PACKAGES[@]}"

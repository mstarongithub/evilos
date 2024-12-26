#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

/tmp/remove-cliwrappers.sh
/tmp/install-docker.sh
/tmp/cli-tools.sh
/tmp/langs.sh

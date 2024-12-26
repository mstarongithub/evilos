FILENAME="/etc/yum.repos.d/_copr:copr.fedorainfracloud.org:$1:$2.repo"

tee "$FILENAME" <<'EOF'
[copr:copr.fedorainfracloud.org:$1:$2]
name=Copr repo for $2 owned by $1
baseurl=https://download.copr.fedorainfracloud.org/results/$1/$2/fedora-$releasever-$basearch/
type=rpm-md
skip_if_unavailable=True
gpgcheck=1
gpgkey=https://download.copr.fedorainfracloud.org/results/$1/$2/pubkey.gpg
repo_gpgcheck=0
enabled=1
enabled_metadata=1
EOF

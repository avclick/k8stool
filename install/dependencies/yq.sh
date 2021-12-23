set -e -v
ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
curl -L -o /tmp/yq https://github.com/mikefarah/yq/releases/download/v4.16.2/yq_linux_$ARCH
chmod +x /tmp/yq
sudo mv /tmp/yq /usr/local/bin

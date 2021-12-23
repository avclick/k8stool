set -e -v
ARCH="$(uname -m | sed -e 's/x86_64/amd64/' -e 's/\(arm\)\(64\)\?.*/\1\2/' -e 's/aarch64$/arm64/')" &&
cd /tmp
curl -L -o cm-verifier.tar.gz https://github.com/alenkacz/cert-manager-verifier/releases/download/v0.2.0/cert-manager-verifier_0.2.0_Linux_$ARCH.tar.gz
tar xzf cm-verifier.tar.gz
sudo mv cm-verifier /usr/local/bin
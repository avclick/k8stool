set -e -v
cd /tmp
curl -L -o cm-verifier.tar.gz https://github.com/alenkacz/cert-manager-verifier/releases/download/v0.2.0/cert-manager-verifier_0.2.0_Linux_arm64.tar.gz
tar xzf cm-verifier.tar.gz
sudo mv cm-verifier /usr/local/bin
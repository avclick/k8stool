cd /tmp
curl -L -o cmctl.tar.gz https://github.com/jetstack/cert-manager/releases/latest/download/cmctl-linux-arm64.tar.gz
tar xzf cmctl.tar.gz
sudo mv cmctl /usr/local/bin
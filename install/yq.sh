#wget -nc -O yq https://github.com/mikefarah/yq/releases/download/v4.16.2/yq_linux_amd64
wget -nc -O /tmp/yq https://github.com/mikefarah/yq/releases/download/v4.16.2/yq_linux_arm64
chmod +x /tmp/yq
sudo mv /tmp/yq /usr/local/bin

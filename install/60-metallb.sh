set -e -v
source .config.sh
## metallb
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.12.1/manifests/metallb.yaml
cp layer2metallb.yaml /tmp/layer2metallb.yaml
sed -i "s^\$POD_PUBLIC_IP_NET^$POD_PUBLIC_IP_NET2^" /tmp/layer2metallb.yaml
kubectl apply -f /tmp/layer2metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
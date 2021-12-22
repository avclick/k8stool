set -e -v
kubectl create ns ingress-nginx
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

helm show values ingress-nginx/ingress-nginx > /tmp/ngingress-metal-custom.yaml
./ngingress-metal-fix.sh /tmp/ngingress-metal-custom.yaml

helm install helm-ngingress ingress-nginx/ingress-nginx -n ingress-nginx --values /tmp/ngingress-metal-custom.yaml
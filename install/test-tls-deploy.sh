set -e -v
kubectl create ns test
kubectl apply -f test-tls-deploy.yml


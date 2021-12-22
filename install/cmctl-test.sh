set -e -v
kubectl apply -f test-resources.yaml
sleep 5
kubectl describe certificate -n cert-manager-test
kubectl delete -f test-resources.yaml

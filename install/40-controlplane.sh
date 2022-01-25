source .config.sh
## start k8s control plane
CERTKEY=$(kubeadm certs certificate-key)
echo $CERTKEY
## save your CERTKEY for future use
## replace the addresses with your own
sudo kubeadm init --apiserver-cert-extra-sans=$POD_HOSTNAME,$POD_PUBLIC_IP --control-plane-endpoint=$POD_HOSTNAME --upload-certs --certificate-key=$CERTKEY #--pod-network-cidr=10.32.0.0/12

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# for example for a single-machine Kubernetes cluster for development
kubectl taint nodes --all node-role.kubernetes.io/master-

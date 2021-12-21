## start k8s control plane
CERTKEY=$(kubeadm certs certificate-key)
echo $CERTKEY
## save your CERTKEY for future use
## replace the addresses with your own
sudo kubeadm init --apiserver-cert-extra-sans=pod1.avclick.ru,130.61.21.115 --pod-network-cidr=10.32.0.0/12 --control-plane-endpoint=pod1.avclick.ru --upload-certs --certificate-key=$CERTKEY

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

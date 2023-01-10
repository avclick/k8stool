set -e
source .config.sh
## start k8s control plane
CERTKEY=$(kubeadm certs certificate-key)
#echo CERTKEY=$CERTKEY | tee -a $HOME/kubeadm.log 
## save your CERTKEY for future use
## replace the addresses with your own
sudo kubeadm init --v=5 --apiserver-advertise-address=$POD_INTERNAL_IP --apiserver-cert-extra-sans=$POD_HOSTNAME --control-plane-endpoint=$POD_HOSTNAME \
--upload-certs --certificate-key=$CERTKEY | tee -a $HOME/kubeadm.log

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# for example for a single-machine Kubernetes cluster for development
#kubectl taint nodes --all node-role.kubernetes.io/master-

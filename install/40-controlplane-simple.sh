source .config.sh
sudo kubeadm init

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# for example for a single-machine Kubernetes cluster for development
kubectl taint nodes --all node-role.kubernetes.io/master-

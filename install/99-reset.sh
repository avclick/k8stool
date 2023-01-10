## remove cluster
sudo kubeadm reset
sudo rm -rf /etc/kubernetes
sudo rm -rf /etc/cni/net.d
sudo rm -rf /var/lib/kubelet
sudo rm -rf /var/lib/etcd
sudo rm -rf $HOME/.kube
#delete all containers
sudo ctr -n k8s.io i rm $(sudo ctr -n k8s.io i ls -q )

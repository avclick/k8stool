set -e -v
## save existing rules
sudo iptables-save > ~/iptables-rules
sudo iptables-save|grep -v DROP| grep -v REJECT| sudo iptables-restore
## check
sudo iptables -L
## save the changes
sudo netfilter-persistent save
sudo systemctl restart iptables

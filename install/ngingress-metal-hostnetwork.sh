source .config.sh
yq e -i '
.controller.dnsPolicy = "ClusterFirstWithHostNet" |
.controller.hostNetwork = true
' $1

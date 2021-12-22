source .config.sh
yq e -i '
.controller.hostNetwork = false |
.controller.hostPort.enabled = true |
.controller.kind = "DaemonSet" |
.controller.service.externalIPs += strenv(POD_PUBLIC_IP) |
.controller.service.loadBalancerSourceRanges += strenv(POD_PUBLIC_IP)
' $1

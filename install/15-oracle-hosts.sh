#опциональный скрипт для варианта установки на oracle cloud
source .config.sh
echo "$POD_INTERNAL_IP $POD_HOSTNAME" |sudo tee -a /etc/hosts

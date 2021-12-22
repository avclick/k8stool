source .config.sh
wget -O debi.sh https://raw.githubusercontent.com/bohanyang/debi/master/debi.sh
chmod a+rx debi.sh
sudo ./debi.sh --hostname $POD_HOSTNAME --user $POD_USER --password $POD_PASSWORD --ethx --bbr --cloud-kernel --timezone $POD_TIMEZONE #--sudo-with-password
sudo shutdown -r now
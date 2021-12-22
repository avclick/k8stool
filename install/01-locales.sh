#sudo dpkg-reconfigure locales
echo "ru_RU.UTF-8 UTF-8" | sudo tee -a /etc/locale.gen
sudo  locale-gen

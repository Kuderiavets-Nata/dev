sudo mkdir /home/folder1/
sudo mkdir /home/folder2/

sudo mkdir /usr/bin/mydaemon
sudo mv /vagrant/mydaemon.sh /usr/bin/mydaemon
sudo chmod +x /usr/bin/mydaemon/mydaemon.sh
sudo mv /vagrant/mydaemon.service /etc/systemd/system/

sudo systemctl start mydaemon.service
sudo systemctl enable mydaemon.service
crontab /vagrant/crontab

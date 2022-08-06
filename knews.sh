#!/bin/sh

##sudo -s

apt install apache2 -y

apt install php libapache2-mod-php -y

systemctl restart apache2

rm main.zip

wget https://github.com/kevacointoolkit/knews/archive/refs/heads/main.zip --no-check-certificate

rm -rf knews-main/*

apt install unzip

rm -rf /var/www/html/*

unzip main.zip

cp knews-main/* /var/www/html/ -r

sudo apt-get install php-bcmath -y

sudo apt-get install php-curl -y

service apache2 reload

cd /var/www/

chmod 777 * -R

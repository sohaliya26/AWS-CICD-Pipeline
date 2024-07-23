#!/bin/bash

sudo add-apt-repository ppa:ondrej/php -y
sudo apt install -y php php-gd php-mbstring php-xml php-zip php-curl -y
sudo apt install apache2 libapache2-mod-php -y
cd $HOME
curl -sS https://getcomposer.org/installer | php
#sudo curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer
sudo mv composer.phar /usr/local/bin/composer 
sudo chmod +x /usr/local/bin/composer


#!/bin/bash

cp -R /team119/ /var/www/html/
cd /var/www/html/team119
sudo chown -R www-data.www-data /var/www/html/team119
sudo chmod -R 755 /var/www/html/team119
sudo chmod -R 777 /var/www/html/team119/storage
yes | sudo composer install 
sudo php artisan key:generate
sudo mv 000-default.conf /etc/apache2/sites-enabled/
sudo php artisan cache:clear
sudo php artisan config:clear
sudo php artisan config:cache
sudo a2enmod rewrite
sudo apt-get install php-mysql -y
sudo service apache2 restart

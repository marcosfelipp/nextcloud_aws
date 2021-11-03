sudo apt update
sudo apt install -y nginx
sudo apt install -y php7.4 php7.4-fpm php7.4-common php7.4-pgsql php7.4-cli php7.4-gd php7.4-json php7.4-curl php7.4-zip php7.4-xml php7.4-mbstring php7.4-bz2 php7.4-intl php7.4-bcmath php7.4-gmp php-imagick php7.4-opcache
sudo apt install -y certbot python3-certbot-nginx
sudo apt install -y postgresql postgresql-contrib
sudo apt install -y unzip
wget https://download.nextcloud.com/server/releases/nextcloud-20.0.5.zip
sudo unzip nextcloud-20.0.5.zip -d /usr/share/nginx/

sudo chown www-data:www-data /usr/share/nginx/nextcloud/ -R
sudo mkdir /usr/share/nginx/nextcloud-data
sudo chown www-data:www-data /usr/share/nginx/nextcloud-data -R

sudo cp ~/nextcloud.conf /etc/nginx/conf.d/nextcloud.conf

sudo -u postgres psql -f database.sql
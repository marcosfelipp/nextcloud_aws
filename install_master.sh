# Install postgresql
sudo apt-get install -y wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ 'lsb_release -cs'-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib

# Install nextcloud
sudo snap install nextcloud

# Install php
sudo apt-get -y install php-fpm php-cli php-json php-curl php-imap php-gd php-pgsql php-xml php-zip php-intl php-mcrypt php-imagick php-mbstring unzip
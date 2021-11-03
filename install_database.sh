sudo apt-get update
sudo apt install -y postgresql postgresql-contrib
sleep 10
sudo -u postgres psql -f /home/ubuntu/database.sql
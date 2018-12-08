sudo apt update
sudo apt install -y wget ca-certificates
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
sudo apt update
sudo apt install -y postgresql-11
sudo service postgresql stop
wget https://github.com/etcd-io/etcd/releases/download/v3.3.10/etcd-v3.3.10-linux-amd64.tar.gz
cd ~ && tar -xvzf etcd-v3.3.10-linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/lib/postgresql/11/bin:~/etcd-v3.3.10-linux-amd64/" > ~/.bashrc
source ~/.bashrc
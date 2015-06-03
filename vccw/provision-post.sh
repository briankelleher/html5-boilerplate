sudo yum downgrade -y php*
sudo yum remove -y compat-mysql*
sudo yum downgrade -y mysql*
sudo yum install -y php-mysql-5.3.3 postfix mysql-server-5.1.73 crontabs
sudo /sbin/service mysqld start
sudo apt install mysql-server -y
sudo mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'PassWord.1';
exit
sudo mysql_secure_installation


This project is a Web stack project that combines:
1. Linux: As an operating-system
2. Apache: Web Server
3. MySQL Database
4. PHP,Python or Perl


1. So we will need to open an AWS EC2-Virtual instance using the image ubuntu,under the t2-Micro family.
2. We are going to ensure that the port of our web server is open,we will need to edit the inbound rule of our security group to open port 80. after opening this port run the script
apache.sh to install apache on our instance.

After Installing apache,take the public ip and map it to port 80 on your web browser to see if its installed. It will bring out a default apache ubuntu web page.
       http://54.224.29.98:80
3. Next stepis to install MySQL. A database management system used for storing and managing data generated from our webapp in a relational database. Run the script and follow instructions there to set up our database. Configure the password and try logging-in to see if your configurations are alright.

4. We move on to install PHP which will work as a serverside or backend software to help display dynamic web pages and interact with db-server(MySQL).
5. Next step is to configure virtual host:
    1. Our configuration dirctory for apache is located at the /var/www/. We create a new directory inside /var/www named lamp-stack. 
           sudo mkdir /var/www/lamp-stack

    2. change ownership of this directory to system user.
         sudo chown -R $USER:$USER /var/www/lamp-stack
    
    3. we move forward to creating our own config file in the /etc/apache2/sites-available/ directory. In this directory,there's is already a default conf file with the name "000-default.conf" we can copy from the file and modify it or we can simply pass in a new configuration into our own file.
     i. create a file called lamp-stack.conf
     ii. vi lamp-stack.conf
     iii. Paste this:
             <VirtualHost *:80>
               ServerName lampstack
               ServerAlias www.lamp-stack
               ServerAdmin webmaster@localhost
               DocumentRoot /var/www/lamp-stack
               ErrorLog ${APACHE_LOG_DIR}/error.log
               CustomLog ${APACHE_LOG_DIR}/access.log combined
             </VirtualHost> 


    4. enable new virtual host:
            sudo a2ensite lamp-stack.conf
    5. disable the default virtual host so apache will show your new virtual host configuration.
              sudo a2dissite 000-default.
    6. Our new configuration is going to display an epty page when we check us       ing our ip or dns name but we can change that. cd /var/www/lamp-stack and       create an index.html. write multiple lines of html inside and save.
       This way,our page wont be empty.
    7. 

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




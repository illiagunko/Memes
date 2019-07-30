FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install php -y 
RUN apt-get install -y php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php iptables
RUN apt-get install -y apache2 && systemctl start apache2 && systemctl enable apache2 && service apache2 start
RUN adduser mememastero
RUN mkdir /var/www/html/memes && chown -R mememastero. /var/www/html/memes
EXPOSE 21 22 80 443 8080

FROM alpine:latest
RUN apk add curl file alpine-sdk tar wget coreutils grep logrotate iptables openssh gettext bash dpkg-dev
RUN apk add apache2 && rc-service apache2 start && rc-update add apache2
RUN addgroup -S mememastero && adduser -S mememastero -G appgroup
RUN mkdir /var/www/html/memes && chown -R mememastero. /var/www/html/memes
EXPOSE 21 22 80 443 8080

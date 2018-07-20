sudo docker run -it --rm \ 
-v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
-v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /docker/letsencrypt-docker-nginx/src/letsencrypt/letsencrypt-site:/data/letsencrypt \
-v "/docker-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
certbot/certbot `#Identifier of Image`\ 
certonly --webroot `#Command to run`\
--email youremail@domain.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d ohhaithere.com -d www.ohhaithere.com



notice: in certbot docker and nginx docker, ./letsencrypt-site is mapped to different position.
		that is why the configurations of nginx config and certbox webroot are differen.
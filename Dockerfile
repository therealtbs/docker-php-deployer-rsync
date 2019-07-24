FROM mwienk/php-deployer

RUN apk --no-cache add rsync

RUN docker-php-ext-install -j$(nproc) bcmath xml xsl xmlrpc soap intl

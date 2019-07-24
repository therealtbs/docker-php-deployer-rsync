FROM mwienk/php-deployer

RUN apk --no-cache add rsync

RUN apk --no-cache add libxml2-dev libxslt-dev && docker-php-ext-install -j$(nproc) bcmath xml xsl xmlrpc soap

FROM solr:6.6
WORKDIR /tmp
ARG BUILD
RUN BUILD=${BUILD} && curl -s -k -o zm-solr-docker-deps.tar.gz https://docker.zimbra.com.s3.amazonaws.com/assets/zm-solr-docker-deps-${BUILD}.tar.gz
RUN	tar -C / --no-overwrite-dir --strip-components=1 -xf zm-solr-docker-deps.tar.gz
RUN	rm zm-solr-docker-deps.tar.gz
WORKDIR /opt/solr

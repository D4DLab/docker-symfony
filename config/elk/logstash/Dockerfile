# https://www.docker.elastic.co/
ARG ELK_VERSION

FROM docker.elastic.co/logstash/logstash:${ELK_VERSION}

MAINTAINER Vasilij Dusko <support@d4d.lt>

RUN rm -f /usr/share/logstash/pipeline/logstash.conf

ADD pipelines.yml /usr/share/logstash/pipeline/logstash.yml
ADD logstash.yml /usr/share/logstash/config/logstash.yml
ADD ./conf.d/patterns/ /etc/logstash/conf.d/patterns/

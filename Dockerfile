FROM docker.elastic.co/logstash/logstash:7.9.2

MAINTAINER Edgar Carvalho (vMan.ch)

LABEL Description="Simple Logstash Receiver / Forwarder used to split ESXi DFW log and all other logs between destinations"


RUN rm -f /usr/share/logstash/pipeline/logstash.conf
RUN rm -f /usr/share/logstash/config/logstash.yml
COPY ./conf/logstash.conf /usr/share/logstash/pipeline/logstash.conf
COPY ./conf/logstash.yml /usr/share/logstash/config/logstash.yml
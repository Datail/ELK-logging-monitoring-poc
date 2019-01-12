## Apache Spark (worker) image with Filebeat installed

FROM bde2020/spark-worker:2.4.0-hadoop2.7

LABEL maintainer="admin@edatail.com"

RUN mkdir /monitoring/

COPY filebeat-6.5.4-amd64.deb /monitoring/

WORKDIR /monitoring/

RUN dpkg -i filebeat-6.5.4-amd64.deb

COPY filebeat.yml /etc/filebeat/filebeat.yml

#RUN filebeat setup --template -E output.logstash.enabled=false -E 'output.elasticsearch.hosts=["elk:9200"]'

#RUN curl -XDELETE 'http://elk:9200/filebeat-*'

CMD ["/bin/bash", "/worker.sh"]

#CMD  ["filebeat", "-e", "-c" ,"/etc/filebeat/filebeat.yml"]


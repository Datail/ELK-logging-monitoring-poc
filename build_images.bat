copy Beats\Filebeat\filebeat-6.5.4-amd64.deb Spark\Master
copy Beats\Filebeat\filebeat-6.5.4-amd64.deb Spark\Worker

copy Beats\Filebeat\filebeat.yml Spark\Master
copy Beats\Filebeat\filebeat.yml Spark\Worker

cd Spark\Master\

docker build -t viniciof1211/spark-filebeat-master . --no-cache

docker tag viniciof1211/spark-filebeat-master  viniciof1211/spark-filebeat-master

docker push viniciof1211/spark-filebeat-master

del filebeat-6.5.4-amd64.deb
del filebeat.yml

cd ..\Worker\

docker build -t viniciof1211/spark-filebeat-worker . --no-cache

docker tag viniciof1211/spark-filebeat-worker  viniciof1211/spark-filebeat-worker

docker push viniciof1211/spark-filebeat-worker

del filebeat-6.5.4-amd64.deb
del filebeat.yml

cd ../../


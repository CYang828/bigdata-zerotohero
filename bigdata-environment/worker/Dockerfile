FROM bde2020/spark-base:3.0.2-hadoop3.2


COPY worker.sh /

ENV SPARK_WORKER_WEBUI_PORT 8081
ENV SPARK_WORKER_LOG /spark/logs
ENV SPARK_MASTER "spark://spark-master:7077"
ENV PYSPARK_PYTHON "/usr/bin/python3"
ENV PYSPARK_DRIVER_PYTHON "/usr/bin/python3"

EXPOSE 8081

CMD ["/bin/bash", "/worker.sh"]

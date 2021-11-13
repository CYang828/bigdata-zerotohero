FROM bde2020/spark-base:3.0.2-hadoop3.2

COPY worker.sh /
COPY ./zeppelin /opt/zeppelin


ENV LOG_TAG="[ZEPPELIN_${Z_VERSION}]:" \
    ZEPPELIN_HOME="/opt/zeppelin" \
    HOME="/opt/zeppelin" \
    LANG=en_US.UTF-8 \
    LC_ALL=en_US.UTF-8 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    ZEPPELIN_ADDR="0.0.0.0" \
    SPARK_MASTER="spark://spark-master:7077" 


EXPOSE 8080

ENTRYPOINT [ "/bin/bash", "--" ]
WORKDIR ${ZEPPELIN_HOME}
CMD ["bin/zeppelin.sh"]
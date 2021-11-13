
ARG BASE_CONTAINER=tensorflow/tensorflow:2.6.0rc1-gpu-jupyter
FROM tensorflow/tensorflow:2.6.0rc1-gpu-jupyter

# 国内镜像
RUN  sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN  apt-get clean


# Fix DL4006
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

USER root

# spark dependencies
ENV APACHE_SPARK_VERSION=3.0.2 \
    HADOOP_VERSION=3.2

RUN apt update -y && \
    apt install inetutils-ping -y && \
    apt install openjdk-8-jre openjdk-8-jdk -y && \
    apt install wget -y && \
    apt install tar -y 
#   rm -rf /var/lib/apt/lists/*

# Using the preferred mirror to download Spark
#

RUN wget https://archive.apache.org/dist/spark/spark-3.0.2/spark-3.0.2-bin-hadoop3.2.tgz 
RUN tar -xvf spark-3.0.2-bin-hadoop3.2.tgz -C /usr/local 

# RUN "spark-3.0.2/spark-3.0.2-bin-hadoop3.2.tgz"


WORKDIR /usr/local
RUN ln -s "spark-3.0.2-bin-hadoop3.2" spark

# Configure Spark
ENV SPARK_HOME=/usr/local/spark
ENV PYTHONPATH=/usr/local/spark/python:/usr/local/spark/python/lib/py4j-0.10.9-src.zip \
    SPARK_OPTS="--driver-java-options=-Xms1024M --driver-java-options=-Xmx4096M --driver-java-options=-Dlog4j.logLevel=info" \
    PATH=/usr/local/spark:/usr/local/spark/bin:$PATH


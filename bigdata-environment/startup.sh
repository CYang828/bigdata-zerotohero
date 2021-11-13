#!/bin/bash

echo "等待 hadoop namenode 退出 safe mode"
hdfs dfsadmin -safemode leave

hdfs dfs -mkdir       /tmp
hdfs dfs -mkdir -p    /user/hive/warehouse
hdfs dfs -mkdir /dataset

hadoop dfs -chmod g+w   /tmp
hadoop dfs -chmod g+w   /user/hive/warehouse

cd $HIVE_HOME/bin
./hiveserver2 --hiveconf hive.server2.enable.doAs=false

# 大数据基础环境

## 快速开始
```bash
docker-compose up
```

zeppelin 用来做大数据实验平台
jupyter lab 


## 步骤1，导入数据到 HDFS 中
docker cp dataset/ namenode:/hadoop-data/ 
docker cp dataset/ml-1m namenode:/hadoop-data/ 
docker cp dataset/shakespeare.txt namenode:/hadoop-data/ 

docker exec -it namenode bash
hdfs dfs -mkdir /dataset
hdfs dfs -put /hadoop-data/dataset/ml-latest/ /dataset/
hdfs dfs -put /hadoop-data/ml-1m/ /dataset/
hdfs dfs -put /hadoop-data/shakespeare.txt /dataset/

## 步骤2，导入数据到 Hive 中
course/hive/import-movielens.zpln

## 步骤3，数据分析/探索
https://www.kaggle.com/rpbarros/sql-movielens/notebook 
一些数据分析的 case
一些可视化操作

## 步骤4，spark 基础

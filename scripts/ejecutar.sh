#!/bin/bash 
hdfs dfs -mkdir -p /user/hadoop/secondarysort/input 
hdfs dfs -mkdir -p /user/hadoop/join/input 
hdfs dfs -rm -r -f /user/hadoop/secondarysort/output 
hdfs dfs -rm -r -f /user/hadoop/join/output 
hdfs dfs -put -f /tmp/datos/datos_secondarysort.txt /user/hadoop/secondarysort/input/ 
hdfs dfs -put -f /tmp/datos/*.csv /user/hadoop/join/input/ 
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar secondarysort /user/hadoop/secondarysort/input /user/hadoop/secondarysort/output 
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar join -inFormat org.apache.hadoop.mapred.KeyValueTextInputFormat -outFormat org.apache.hadoop.mapred.TextOutputFormat -outKey org.apache.hadoop.io.Text -outValue org.apache.hadoop.io.Text -joinType inner /user/hadoop/join/input /user/hadoop/join/output 

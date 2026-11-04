```bash 
hdfs dfs -mkdir -p /user/hadoop/ejercicio_join/input 
hdfs dfs -put /tmp/datos/*.csv /user/hadoop/ejercicio_join/input/ 
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.3.6.jar join -inFormat org.apache.hadoop.mapred.KeyValueTextInputFormat -outFormat org.apache.hadoop.mapred.TextOutputFormat -outKey org.apache.hadoop.io.Text -outValue org.apache.hadoop.io.Text -joinType inner /user/hadoop/join/input /user/hadoop/join/output 
hdfs dfs -cat /user/hadoop/ejercicio_join/output/part-00000 
``` 

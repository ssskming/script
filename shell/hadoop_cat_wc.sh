
# 利用hadoop的流操作，读取hadoop文件，计算文件行数

yarn jar /opt/fi_client/HDFS/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.2.jar streamjob \
	-D dfs.replication=2 \
	-D mapreduce.job.queuename=default \
	-D mapreduce.input.fileinputformat.split.minsize=4048576000 \
	-D mapreduce.input.fileinputformat.split.maxsize=4048576000 \
	-input $1
	-output $2 \
	-mapper "cat" \
	-reducer "wc -l" \
	-numReduceTasks 8

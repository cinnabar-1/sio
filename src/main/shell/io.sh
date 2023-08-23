#!/bin/bash

WORKING_DIR=$(pwd)
LOG=${WORKING_DIR}/log

JAVA_HOME=/app/jdk-19.0.2+7/bin
JAVA=${JAVA_HOME}/java

echo '' > "${LOG}"

lock_process=/app/0808/idel-jar-with-dependencies.jar
#nohup ${JAVA} -jar ${lock_process} </dev/null >/app/0808/all.log 2>&1 &

input_file=/app/0808/input_file.fifo
output_file=/app/0808/output_file.fifo
mkfifo $input_file
mkfifo $output_file
#这里要关联文件描述符，不然与java交互的过程中会阻塞，第二个System.in会读不到数据，而且System.out也会一起输出出去
exec 3<>$input_file
exec 4<>$output_file

#ids=$(java -jar ${lock_process} < $input_file | tail -l)\

#echo "${ids[@]}"
#
#for itemId in ${ids}
#do
#  echo "${itemId}"
#done

if [ -p ${input_file} ]; then
    echo "input file now"
fi

nohup java -jar ${lock_process} <$input_file >$output_file  2>error.log &

read -u4 in

echo "$in"

echo -n 1 > $input_file

read -u4 in
#in=$(cat $output_file)

echo "$in"

echo -n 2 > $input_file

read -u4 in

echo "$in"



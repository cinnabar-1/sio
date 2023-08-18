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
exec 3<>$input_file
exec 4<>$output_file

#ids=$(java -jar ${lock_process} < $input_file | tail -l)\

#echo "${ids[@]}"
#
#for itemId in ${ids}
#do
#  echo "${itemId}"
#done

nohup java -jar ${lock_process} <$input_file >$output_file  2>error.log &

echo 1 > $input_file

read -u3 in

echo "$in"

echo 2 > $input_file

read -u3 in

echo "$in"



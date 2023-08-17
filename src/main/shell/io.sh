#!/bin/bash

WORKING_DIR=$(pwd)
LOG=${WORKING_DIR}/log

JAVA_HOME=/app/jdk-19.0.2+7/bin
JAVA=${JAVA_HOME}/java

echo '' > "${LOG}"

lock_process=/app/0808/idel-jar-with-dependencies.jar
#nohup ${JAVA} -jar ${lock_process} </dev/null >/app/0808/all.log 2>&1 &


ids=$(java -jar ${lock_process} | tail -l)
echo "${ids[@]}"

for itemId in ${ids}
do
  echo "${itemId}"
done
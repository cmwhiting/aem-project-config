#!/bin/bash

source ../scripts/utils/common.sh

## Command Options
PORT_NUMBER="4503"
RUNMODES="publish,$RUNMODE_STANDARD_LOCAL"

CQ_JVM_OPTS='-agentlib:jdwp=transport=dt_socket,server=y,address=30303,suspend=n';

CMD="java $JVM_OPTS $CQ_JVM_OPTS -jar $AEM_JAR_6_4 $FLAG_STANDARD_LOCAL -r $RUNMODES -port $PORT_NUMBER"

cd $DIR_INSTANCE
cd "publish"
$CMD
cd $CURRENT_DIR

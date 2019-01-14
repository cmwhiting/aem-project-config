#!/bin/bash

DIR_ROOT=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd .. && pwd );
source $DIR_ROOT/utils/common.sh

## Command Options
PORT_NUMBER="4503"
RUNMODES="publish,$RUNMODE_STANDARD_LOCAL"

CQ_JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,address=30303,suspend=n";

CMD="java $JVM_OPTS $CQ_JVM_OPTS -jar $AEM_JAR_6_2 $FLAG_STANDARD_LOCAL -r $RUNMODES -port $PORT_NUMBER"

cd "publish"
$CMD
cd $DIR_CURRENT
